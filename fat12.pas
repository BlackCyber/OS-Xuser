{ fat12.pas }

const
  FAT_START = $2000;  { Offset from start of disk }
  ROOT_DIR_START = $4000;
  
type
  TFAT12Entry = record
    Filename: array[0..7] of Char;
    Extension: array[0..2] of Char;
    Attributes: Byte;
    ClusterHigh: Byte;
    ClusterLow: Word;
    FileSize: LongWord;
  end;

procedure ReadFAT12Entry(Cluster: Word; var Entry: TFAT12Entry);
begin
  { Read FAT12 entry from disk }
end;

procedure WriteFAT12Entry(Cluster: Word; var Entry: TFAT12Entry);
begin
  { Write FAT12 entry to disk }
end;

procedure InitializeFileSystem;
begin
  { Initialize FAT12 and file system structures }
end;
