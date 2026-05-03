<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="/Users/computer/Desktop/sql/bddk_proje.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="6066"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="SektorelKrediDaglm_2025_1" custom_title="0" dock_id="1" table="4,25:mainSektorelKrediDaglm_2025_1"/><dock_state state="000000ff00000000fd00000001000000020000035600000299fc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000000003560000015c00ffffff000003560000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="SektorelKrediDaglm_2025_1" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="73"/><column index="2" value="300"/><column index="3" value="182"/><column index="4" value="222"/><column index="5" value="102"/><column index="6" value="123"/><column index="7" value="155"/><column index="8" value="142"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">WITH sektor_bazli_npl AS (
    SELECT
        sektör,
        ROUND(SUM(takipteki_krediler) * 100.0 / SUM(toplam_nakdi_krediler), 2) AS sektor_npl,
        ROUND(SUM(toplam_nakdi_krediler) / 1000000.0, 2) AS kredi_hacmi_MilyarTL
    FROM tum_aylar
    GROUP BY sektör
),
yillik_npl AS (
    SELECT
        ROUND(SUM(takipteki_krediler) * 100.0 / SUM(toplam_nakdi_krediler), 2) AS senelik_npl
    FROM tum_aylar
)
SELECT
    s.sektör,
    s.sektor_npl,
    s.kredi_hacmi_MilyarTL,
    CASE
        WHEN s.sektor_npl &gt; y.senelik_npl * 3 THEN 'Kritik Risk'
        WHEN s.sektor_npl &gt; y.senelik_npl * 2 THEN 'Yüksek Risk'
        WHEN s.sektor_npl &gt; y.senelik_npl     THEN 'Orta Risk'
        ELSE 'Düşük Risk'
    END AS risk_seviyesi
FROM sektor_bazli_npl s
CROSS JOIN yillik_npl y
ORDER BY s.kredi_hacmi_MilyarTL DESC
</sql><current_tab id="0"/></tab_sql></sqlb_project>
