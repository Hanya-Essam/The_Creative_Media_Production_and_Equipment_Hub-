USE [Media Production & Equipment Hub];

-- ============================================================
-- 1. SUPERVISOR (must be first because PROFESSIONAL needs it)
-- ============================================================
INSERT INTO SUPERVISOR VALUES (1, 'Technical Operations', 'Mohamed Hassan', 101);
INSERT INTO SUPERVISOR VALUES (2, 'Creative Direction', 'Sara Ahmed', 102);

-- ============================================================
-- 2. CLIENT (must be before BOOKING)
-- ============================================================
INSERT INTO CLIENT VALUES ('John Smith', 1, 'Creative Corp', 'Jane Doe', 'john@creativecorp.com', '0501234567');
INSERT INTO CLIENT VALUES ('Sara Ali', 2, 'Media House', 'Ali Hassan', 'sara@mediahouse.com', '0509876543');

-- ============================================================
-- 3. PROFESSIONAL (needs SUPERVISOR)
-- ============================================================
INSERT INTO PROFESSIONAL VALUES ('Ahmed Tarek', 1, 1, 'ahmed@studio.com', 'Director');
INSERT INTO PROFESSIONAL VALUES ('Sara Mohamed', 2, 1, 'sara@studio.com', 'Editor');
INSERT INTO PROFESSIONAL VALUES ('Omar Khaled', 3, 2, 'omar@studio.com', 'Cinematographer');

-- ============================================================
-- 4. STUDIO (must be before SESSION and WING)
-- ============================================================
INSERT INTO STUDIO VALUES (1, 'Stereo', 'Yes', 'Green Screen', 'Yes');
INSERT INTO STUDIO VALUES (2, 'Mono', 'No', 'Sound Booth', 'Yes');
INSERT INTO STUDIO VALUES (3, 'Dolby', 'Yes', 'Recording', 'Yes');

-- ============================================================
-- 5. WING (needs STUDIO)
-- ============================================================
INSERT INTO WING VALUES (1, 1, 'North Wing');
INSERT INTO WING VALUES (2, 1, 'South Wing');
INSERT INTO WING VALUES (3, 2, 'East Wing');

-- ============================================================
-- 6. EQUIPEMENT
-- ============================================================
INSERT INTO EQUIPEMENT VALUES (1001, 'Good', 'Ahmed Tarek', 'Camera', 'Canon EOS R5');
INSERT INTO EQUIPEMENT VALUES (1002, 'Excellent', 'Sara Mohamed', 'Lighting', 'Aputure 600D');
INSERT INTO EQUIPEMENT VALUES (1003, 'Good', 'Omar Khaled', 'Lens', 'Sigma 50mm');

-- ============================================================
-- 7. BOOKING (needs CLIENT)
-- ============================================================
INSERT INTO BOOKING VALUES (1, 1, 'John Smith', GETDATE(), 5000.00, 'Confirmed');
INSERT INTO BOOKING VALUES (2, 2, 'Sara Ali', GETDATE(), 8000.00, 'Pending');

-- ============================================================
-- 8. PROJECT (needs BOOKING)
-- ============================================================
INSERT INTO PROJECT VALUES ('Brand Campaign 2026', 1, 150000.00, '2026-12-31', 'Planning');
INSERT INTO PROJECT VALUES ('Documentary Series', 2, 200000.00, '2026-10-15', 'In Production');

-- ============================================================
-- 9. SESSION (needs BOOKING)
-- ============================================================
INSERT INTO SESSION VALUES (1, 1, GETDATE(), 'Active', GETDATE(), GETDATE(), GETDATE());
INSERT INTO SESSION VALUES (2, 2, GETDATE(), 'Scheduled', GETDATE(), GETDATE(), GETDATE());
INSERT INTO SESSION VALUES (3, 1, DATEADD(MONTH,-2,GETDATE()), 'Completed', DATEADD(MONTH,-2,GETDATE()), DATEADD(MONTH,-2,GETDATE()), DATEADD(MONTH,-2,GETDATE()));

-- ============================================================
-- 10. MANAGE (needs STUDIO + SUPERVISOR)
-- ============================================================
INSERT INTO MANAGE VALUES (1, 1);
INSERT INTO MANAGE VALUES (2, 2);

-- ============================================================
-- 11. TAKEPLACE (needs STUDIO + SESSION)
-- ============================================================
INSERT INTO TAKEPLACE VALUES (1, 1);
INSERT INTO TAKEPLACE VALUES (2, 2);

-- ============================================================
-- 12. INVOLVE (needs PROFESSIONAL + SESSION)
-- ============================================================
INSERT INTO INVOLVE VALUES (1, 1, GETDATE());
INSERT INTO INVOLVE VALUES (2, 2, GETDATE());
INSERT INTO INVOLVE VALUES (3, 3, GETDATE());

-- ============================================================
-- 13. EXCUTE (needs PROJECT + PROFESSIONAL)
-- ============================================================
INSERT INTO EXCUTE VALUES ('Brand Campaign 2026', 1);
INSERT INTO EXCUTE VALUES ('Documentary Series', 2);
INSERT INTO EXCUTE VALUES ('Brand Campaign 2026', 3);

-- ============================================================
-- 14. USEDIN (needs SESSION + EQUIPEMENT)
-- ============================================================
INSERT INTO USEDIN VALUES (1, 1001);
INSERT INTO USEDIN VALUES (2, 1002);
INSERT INTO USEDIN VALUES (3, 1003);

-- ============================================================
-- 15. ASSIGNEQUIPMENT (needs SESSION + PROFESSIONAL + PROJECT)
-- ============================================================
INSERT INTO ASSIGNEQUIPMENT VALUES (1, 1, 'Brand Campaign 2026');
INSERT INTO ASSIGNEQUIPMENT VALUES (2, 2, 'Documentary Series');
INSERT INTO ASSIGNEQUIPMENT VALUES (3, 3, 'Brand Campaign 2026');
-- ==============================================================
-- ====================================================================
USE [Media Production & Equipment Hub];

-- INSERT 1 — Add new corporate client
INSERT INTO CLIENT VALUES (
    'James Anderson',
    3,
    'Vision Media Group',
    'Emily Watson',
    'james.anderson@visionmedia.com',
    '0501234999'
);

-- INSERT 2 — Add new cinematographer
INSERT INTO PROFESSIONAL VALUES (
    'Karim El Sayed',
    4,
    1,
    'karim.elsayed@studio.com',
    'Cinematographer'
);

-- UPDATE 1 — Update Brand Campaign status to In Production
UPDATE PROJECT
SET STATUSPROJECT = 'In Production'
WHERE TITLE = 'Brand Campaign 2026';

-- UPDATE 2 — Mark Green Screen studio as unavailable
UPDATE STUDIO
SET IS_AVALIABLE = 'No'
WHERE STUDIOID = 1;

-- DELETE 1 — Remove client James Anderson
DELETE FROM CLIENT
WHERE CLIENTID = 3;

-- DELETE 2 — Remove professional Karim El Sayed
DELETE FROM PROFESSIONAL
WHERE PRODID = 4;

-- SELECT 1 — View all production projects
SELECT TITLE, BUDGET, DEADLINE, STATUSPROJECT
FROM PROJECT;

-- SELECT 2 — Production schedule with booking details (JOIN)
SELECT S.SESSIONID, S.DATE, S.SESSION_STATUS,
B.BOOKERNAME, B.BOOKDATE, B.BOOKSTATUS
FROM SESSION S
JOIN BOOKING B ON S.BOOKID = B.BOOKID;