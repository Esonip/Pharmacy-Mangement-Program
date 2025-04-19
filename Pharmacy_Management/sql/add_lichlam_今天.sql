DECLARE @StartDate DATE = '2025-03-29';
DECLARE @EndDate DATE = '2025-05-30';
DECLARE @CurrentDate DATE;
DECLARE @maLLV INT = 318; -- Starting from 'LLV0318'

-- Temporary table to store the schedule template
CREATE TABLE #ScheduleTemplate (
    maNV VARCHAR(5),
    maCa VARCHAR(3),
    ghiChu NVARCHAR(50)
);

-- Insert the fixed schedule template based on the provided data
INSERT INTO #ScheduleTemplate (maNV, maCa, ghiChu) VALUES
('NV001', 'CA1', N'Làm ca CA1'),
('NV002', 'CA1', N'Làm ca CA1'),
('NV003', 'CA2', N'Làm ca CA2'),
('NV004', 'CA2', N'Làm ca CA2'),
('NV005', 'CA3', N'Làm ca CA3'),
('NV006', 'CA3', N'Làm ca CA3'),
('NV007', 'CA4', N'Làm ca CA4'),
('NV008', 'CA4', N'Làm ca CA4'),
('NV009', 'CA1', N'Làm ca CA1'),
('NV010', 'CA2', N'Làm ca CA2');

-- Cursor to iterate through each date
SET @CurrentDate = @StartDate;

WHILE @CurrentDate <= @EndDate
BEGIN
    -- Insert records for the current date
    INSERT INTO LichLamViec (maLLV, maNV, ngay, maCa, ghiChu)
    SELECT 
        'LLV' + RIGHT('0000' + CAST(@maLLV + ROW_NUMBER() OVER (ORDER BY maNV) - 1 AS VARCHAR(4)), 4),
        maNV,
        @CurrentDate,
        maCa,
        ghiChu
    FROM #ScheduleTemplate;

    -- Increment maLLV by 10 (since 10 records per day)
    SET @maLLV = @maLLV + 10;
    -- Move to the next day
    SET @CurrentDate = DATEADD(DAY, 1, @CurrentDate);
END;

-- Clean up
DROP TABLE #ScheduleTemplate;