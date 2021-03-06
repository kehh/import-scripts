# find at least 2 representative values for each field
(SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE AccessionBy IS NOT NULL AND AccessionBy <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE AccessionDate IS NOT NULL AND AccessionDate <> '0000-00-00'
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE DeAccessionedYesNo IS NOT NULL AND DeAccessionedYesNo <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE DeaccessionReason IS NOT NULL AND DeaccessionReason <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE DeaccessionDisposal IS NOT NULL AND DeaccessionDisposal <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE LastEditDate IS NOT NULL AND LastEditDate <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE LastEditBy IS NOT NULL AND LastEditBy <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE OtherNum IS NOT NULL AND OtherNum <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE UsualLocation IS NOT NULL AND UsualLocation <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE DefaultUsualLocation IS NOT NULL AND DefaultUsualLocation <> ''
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE UsualLocationRoom IS NOT NULL
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE UsualLocationShelf IS NOT NULL
       LIMIT 2)
UNION (SELECT PrimaryKey_Object_Table
       FROM ObjectsExport
       WHERE UsualLocationBox IS NOT NULL
       LIMIT 2)
;
## now we've found the sample records use them as the source
SELECT
    Accession_Full_ID,
    ItemName,
    AccessionBy,
    AccessionDate,
    DeAccessionedYesNo,
    DeaccessionReason,
    DeaccessionDisposal,
    LastEditDate,
    LastEditBy,
    OtherNum,
    UsualLocation,
    DefaultUsualLocation,
    UsualLocationRoom,
    UsualLocationShelf,
    UsualLocationBox,
    UsualLocationLowest,
    UsualLocationType
FROM
    ObjectsExport
WHERE
    PrimaryKey_Object_Table IN (3,6,4450,4451,4386,3430,3767,46,2277,5335,4802,8789,1730,8,11,544,4802);
