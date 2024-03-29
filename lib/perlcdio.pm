# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.3.40
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package perlcdio;
use base qw(Exporter);
use base qw(DynaLoader);
package perlcdioc;
bootstrap perlcdio;
package perlcdio;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package perlcdio;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package perlcdio;

*audio_pause = *perlcdioc::audio_pause;
*audio_play_lsn = *perlcdioc::audio_play_lsn;
*audio_resume = *perlcdioc::audio_resume;
*audio_stop = *perlcdioc::audio_stop;
*audio_get_volume_levels = *perlcdioc::audio_get_volume_levels;
*audio_set_volume_levels = *perlcdioc::audio_set_volume_levels;
*audio_get_status = *perlcdioc::audio_get_status;
*lseek = *perlcdioc::lseek;
*read_cd = *perlcdioc::read_cd;
*read_sectors = *perlcdioc::read_sectors;
*read_data_bytes = *perlcdioc::read_data_bytes;
*cdio_read_pvd = *perlcdioc::cdio_read_pvd;
*get_first_track_num = *perlcdioc::get_first_track_num;
*get_last_track_num = *perlcdioc::get_last_track_num;
*get_track = *perlcdioc::get_track;
*get_track_channels = *perlcdioc::get_track_channels;
*get_track_copy_permit = *perlcdioc::get_track_copy_permit;
*get_track_format = *perlcdioc::get_track_format;
*is_track_green = *perlcdioc::is_track_green;
*get_track_last_lsn = *perlcdioc::get_track_last_lsn;
*get_track_lba = *perlcdioc::get_track_lba;
*get_track_lsn = *perlcdioc::get_track_lsn;
*get_track_msf = *perlcdioc::get_track_msf;
*get_track_preemphasis = *perlcdioc::get_track_preemphasis;
*get_track_sec_count = *perlcdioc::get_track_sec_count;
*cdio_get_track_isrc = *perlcdioc::cdio_get_track_isrc;
*close_tray = *perlcdioc::close_tray;
*close = *perlcdioc::close;
*driver_errmsg = *perlcdioc::driver_errmsg;
*eject_media = *perlcdioc::eject_media;
*eject_media_drive = *perlcdioc::eject_media_drive;
*get_arg = *perlcdioc::get_arg;
*get_device = *perlcdioc::get_device;
*get_default_device_driver = *perlcdioc::get_default_device_driver;
*cdio_get_devices = *perlcdioc::cdio_get_devices;
*get_devices = *perlcdioc::get_devices;
*get_devices_ret = *perlcdioc::get_devices_ret;
*get_devices_with_cap = *perlcdioc::get_devices_with_cap;
*get_devices_with_cap_ret = *perlcdioc::get_devices_with_cap_ret;
*get_drive_cap = *perlcdioc::get_drive_cap;
*get_driver_name = *perlcdioc::get_driver_name;
*get_driver_id = *perlcdioc::get_driver_id;
*get_last_session = *perlcdioc::get_last_session;
*have_driver = *perlcdioc::have_driver;
*have_ATAPI = *perlcdioc::have_ATAPI;
*is_binfile = *perlcdioc::is_binfile;
*is_cuefile = *perlcdioc::is_cuefile;
*is_device = *perlcdioc::is_device;
*is_nrg = *perlcdioc::is_nrg;
*is_tocfile = *perlcdioc::is_tocfile;
*get_media_changed = *perlcdioc::get_media_changed;
*get_hwinfo = *perlcdioc::get_hwinfo;
*get_tray_status = *perlcdioc::get_tray_status;
*set_blocksize = *perlcdioc::set_blocksize;
*set_speed = *perlcdioc::set_speed;
*open_cd = *perlcdioc::open_cd;
*get_disc_last_lsn = *perlcdioc::get_disc_last_lsn;
*get_disc_mode = *perlcdioc::get_disc_mode;
*get_joliet_level = *perlcdioc::get_joliet_level;
*get_mcn = *perlcdioc::get_mcn;
*get_num_tracks = *perlcdioc::get_num_tracks;
*get_cdtext = *perlcdioc::get_cdtext;
*get_cddb_discid = *perlcdioc::get_cddb_discid;
*cddb_dec_digit_sum = *perlcdioc::cddb_dec_digit_sum;
*guess_cd_type = *perlcdioc::guess_cd_type;
*cdio_version = *perlcdioc::cdio_version;

# ------- VARIABLE STUBS --------

package perlcdio;

*VERSION_NUM = *perlcdioc::VERSION_NUM;
*INVALID_LBA = *perlcdioc::INVALID_LBA;
*INVALID_LSN = *perlcdioc::INVALID_LSN;
*CD_FRAMESIZE = *perlcdioc::CD_FRAMESIZE;
*CD_FRAMESIZE_RAW = *perlcdioc::CD_FRAMESIZE_RAW;
*ISO_BLOCKSIZE = *perlcdioc::ISO_BLOCKSIZE;
*M2F2_SECTOR_SIZE = *perlcdioc::M2F2_SECTOR_SIZE;
*M2RAW_SECTOR_SIZE = *perlcdioc::M2RAW_SECTOR_SIZE;
*READ_MODE_AUDIO = *perlcdioc::READ_MODE_AUDIO;
*READ_MODE_M1F1 = *perlcdioc::READ_MODE_M1F1;
*READ_MODE_M1F2 = *perlcdioc::READ_MODE_M1F2;
*READ_MODE_M2F1 = *perlcdioc::READ_MODE_M2F1;
*READ_MODE_M2F2 = *perlcdioc::READ_MODE_M2F2;
*TRACK_FORMAT_AUDIO = *perlcdioc::TRACK_FORMAT_AUDIO;
*TRACK_FORMAT_CDI = *perlcdioc::TRACK_FORMAT_CDI;
*TRACK_FORMAT_XA = *perlcdioc::TRACK_FORMAT_XA;
*TRACK_FORMAT_DATA = *perlcdioc::TRACK_FORMAT_DATA;
*TRACK_FORMAT_PSX = *perlcdioc::TRACK_FORMAT_PSX;
*CDIO_TRACK_FLAG_FALSE = *perlcdioc::CDIO_TRACK_FLAG_FALSE;
*CDIO_TRACK_FLAG_TRUE = *perlcdioc::CDIO_TRACK_FLAG_TRUE;
*CDIO_TRACK_FLAG_ERROR = *perlcdioc::CDIO_TRACK_FLAG_ERROR;
*CDIO_TRACK_FLAG_UNKNOWN = *perlcdioc::CDIO_TRACK_FLAG_UNKNOWN;
*CDIO_CDROM_LBA = *perlcdioc::CDIO_CDROM_LBA;
*CDIO_CDROM_MSF = *perlcdioc::CDIO_CDROM_MSF;
*CDIO_CDROM_DATA_TRACK = *perlcdioc::CDIO_CDROM_DATA_TRACK;
*CDIO_CDROM_CDI_TRACK = *perlcdioc::CDIO_CDROM_CDI_TRACK;
*CDIO_CDROM_XA_TRACK = *perlcdioc::CDIO_CDROM_XA_TRACK;
*AUDIO = *perlcdioc::AUDIO;
*MODE1 = *perlcdioc::MODE1;
*MODE1_RAW = *perlcdioc::MODE1_RAW;
*MODE2 = *perlcdioc::MODE2;
*MODE2_FORM1 = *perlcdioc::MODE2_FORM1;
*MODE2_FORM2 = *perlcdioc::MODE2_FORM2;
*MODE2_FORM_MIX = *perlcdioc::MODE2_FORM_MIX;
*MODE2_RAW = *perlcdioc::MODE2_RAW;
*INVALID_TRACK = *perlcdioc::INVALID_TRACK;
*CDROM_LEADOUT_TRACK = *perlcdioc::CDROM_LEADOUT_TRACK;
*DRIVE_CAP_ERROR = *perlcdioc::DRIVE_CAP_ERROR;
*DRIVE_CAP_UNKNOWN = *perlcdioc::DRIVE_CAP_UNKNOWN;
*DRIVE_CAP_MISC_CLOSE_TRAY = *perlcdioc::DRIVE_CAP_MISC_CLOSE_TRAY;
*DRIVE_CAP_MISC_EJECT = *perlcdioc::DRIVE_CAP_MISC_EJECT;
*DRIVE_CAP_MISC_LOCK = *perlcdioc::DRIVE_CAP_MISC_LOCK;
*DRIVE_CAP_MISC_SELECT_SPEED = *perlcdioc::DRIVE_CAP_MISC_SELECT_SPEED;
*DRIVE_CAP_MISC_SELECT_DISC = *perlcdioc::DRIVE_CAP_MISC_SELECT_DISC;
*DRIVE_CAP_MISC_MULTI_SESSION = *perlcdioc::DRIVE_CAP_MISC_MULTI_SESSION;
*DRIVE_CAP_MISC_MEDIA_CHANGED = *perlcdioc::DRIVE_CAP_MISC_MEDIA_CHANGED;
*DRIVE_CAP_MISC_RESET = *perlcdioc::DRIVE_CAP_MISC_RESET;
*DRIVE_CAP_MISC_FILE = *perlcdioc::DRIVE_CAP_MISC_FILE;
*DRIVE_CAP_READ_AUDIO = *perlcdioc::DRIVE_CAP_READ_AUDIO;
*DRIVE_CAP_READ_CD_DA = *perlcdioc::DRIVE_CAP_READ_CD_DA;
*DRIVE_CAP_READ_CD_G = *perlcdioc::DRIVE_CAP_READ_CD_G;
*DRIVE_CAP_READ_CD_R = *perlcdioc::DRIVE_CAP_READ_CD_R;
*DRIVE_CAP_READ_CD_RW = *perlcdioc::DRIVE_CAP_READ_CD_RW;
*DRIVE_CAP_READ_DVD_R = *perlcdioc::DRIVE_CAP_READ_DVD_R;
*DRIVE_CAP_READ_DVD_PR = *perlcdioc::DRIVE_CAP_READ_DVD_PR;
*DRIVE_CAP_READ_DVD_RAM = *perlcdioc::DRIVE_CAP_READ_DVD_RAM;
*DRIVE_CAP_READ_DVD_ROM = *perlcdioc::DRIVE_CAP_READ_DVD_ROM;
*DRIVE_CAP_READ_DVD_RW = *perlcdioc::DRIVE_CAP_READ_DVD_RW;
*DRIVE_CAP_READ_DVD_RPW = *perlcdioc::DRIVE_CAP_READ_DVD_RPW;
*DRIVE_CAP_READ_C2_ERRS = *perlcdioc::DRIVE_CAP_READ_C2_ERRS;
*DRIVE_CAP_READ_MODE2_FORM1 = *perlcdioc::DRIVE_CAP_READ_MODE2_FORM1;
*DRIVE_CAP_READ_MODE2_FORM2 = *perlcdioc::DRIVE_CAP_READ_MODE2_FORM2;
*DRIVE_CAP_READ_MCN = *perlcdioc::DRIVE_CAP_READ_MCN;
*DRIVE_CAP_READ_ISRC = *perlcdioc::DRIVE_CAP_READ_ISRC;
*DRIVE_CAP_WRITE_CD_R = *perlcdioc::DRIVE_CAP_WRITE_CD_R;
*DRIVE_CAP_WRITE_CD_RW = *perlcdioc::DRIVE_CAP_WRITE_CD_RW;
*DRIVE_CAP_WRITE_DVD_R = *perlcdioc::DRIVE_CAP_WRITE_DVD_R;
*DRIVE_CAP_WRITE_DVD_PR = *perlcdioc::DRIVE_CAP_WRITE_DVD_PR;
*DRIVE_CAP_WRITE_DVD_RAM = *perlcdioc::DRIVE_CAP_WRITE_DVD_RAM;
*DRIVE_CAP_WRITE_DVD_RW = *perlcdioc::DRIVE_CAP_WRITE_DVD_RW;
*DRIVE_CAP_WRITE_DVD_RPW = *perlcdioc::DRIVE_CAP_WRITE_DVD_RPW;
*DRIVE_CAP_WRITE_MT_RAINIER = *perlcdioc::DRIVE_CAP_WRITE_MT_RAINIER;
*DRIVE_CAP_WRITE_BURN_PROOF = *perlcdioc::DRIVE_CAP_WRITE_BURN_PROOF;
*DRIVE_CAP_WRITE_CD = *perlcdioc::DRIVE_CAP_WRITE_CD;
*DRIVE_CAP_WRITE_DVD = *perlcdioc::DRIVE_CAP_WRITE_DVD;
*DRIVE_CAP_WRITE = *perlcdioc::DRIVE_CAP_WRITE;
*MMC_HW_VENDOR_LEN = *perlcdioc::MMC_HW_VENDOR_LEN;
*MMC_HW_MODEL_LEN = *perlcdioc::MMC_HW_MODEL_LEN;
*MMC_HW_REVISION_LEN = *perlcdioc::MMC_HW_REVISION_LEN;
*SRC_IS_DISK_IMAGE_MASK = *perlcdioc::SRC_IS_DISK_IMAGE_MASK;
*SRC_IS_DEVICE_MASK = *perlcdioc::SRC_IS_DEVICE_MASK;
*SRC_IS_SCSI_MASK = *perlcdioc::SRC_IS_SCSI_MASK;
*SRC_IS_NATIVE_MASK = *perlcdioc::SRC_IS_NATIVE_MASK;
*DRIVER_UNKNOWN = *perlcdioc::DRIVER_UNKNOWN;
*DRIVER_AIX = *perlcdioc::DRIVER_AIX;
*DRIVER_BSDI = *perlcdioc::DRIVER_BSDI;
*DRIVER_FREEBSD = *perlcdioc::DRIVER_FREEBSD;
*DRIVER_LINUX = *perlcdioc::DRIVER_LINUX;
*DRIVER_SOLARIS = *perlcdioc::DRIVER_SOLARIS;
*DRIVER_OSX = *perlcdioc::DRIVER_OSX;
*DRIVER_WIN32 = *perlcdioc::DRIVER_WIN32;
*DRIVER_CDRDAO = *perlcdioc::DRIVER_CDRDAO;
*DRIVER_BINCUE = *perlcdioc::DRIVER_BINCUE;
*DRIVER_NRG = *perlcdioc::DRIVER_NRG;
*DRIVER_DEVICE = *perlcdioc::DRIVER_DEVICE;
*MIN_DRIVER = *perlcdioc::MIN_DRIVER;
*MIN_DEVICE_DRIVER = *perlcdioc::MIN_DEVICE_DRIVER;
*MAX_DRIVER = *perlcdioc::MAX_DRIVER;
*MAX_DEVICE_DRIVER = *perlcdioc::MAX_DEVICE_DRIVER;
*DRIVER_OP_SUCCESS = *perlcdioc::DRIVER_OP_SUCCESS;
*DRIVER_OP_ERROR = *perlcdioc::DRIVER_OP_ERROR;
*DRIVER_OP_UNSUPPORTED = *perlcdioc::DRIVER_OP_UNSUPPORTED;
*DRIVER_OP_UNINIT = *perlcdioc::DRIVER_OP_UNINIT;
*DRIVER_OP_NOT_PERMITTED = *perlcdioc::DRIVER_OP_NOT_PERMITTED;
*DRIVER_OP_BAD_PARAMETER = *perlcdioc::DRIVER_OP_BAD_PARAMETER;
*DRIVER_OP_BAD_POINTER = *perlcdioc::DRIVER_OP_BAD_POINTER;
*DRIVER_OP_NO_DRIVER = *perlcdioc::DRIVER_OP_NO_DRIVER;
*FS_AUDIO = *perlcdioc::FS_AUDIO;
*FS_HIGH_SIERRA = *perlcdioc::FS_HIGH_SIERRA;
*FS_ISO_9660 = *perlcdioc::FS_ISO_9660;
*FS_INTERACTIVE = *perlcdioc::FS_INTERACTIVE;
*FS_HFS = *perlcdioc::FS_HFS;
*FS_UFS = *perlcdioc::FS_UFS;
*FS_EXT2 = *perlcdioc::FS_EXT2;
*FS_ISO_HFS = *perlcdioc::FS_ISO_HFS;
*FS_ISO_9660_INTERACTIVE = *perlcdioc::FS_ISO_9660_INTERACTIVE;
*FS_3DO = *perlcdioc::FS_3DO;
*FS_XISO = *perlcdioc::FS_XISO;
*FS_UDFX = *perlcdioc::FS_UDFX;
*FS_UDF = *perlcdioc::FS_UDF;
*FS_ISO_UDF = *perlcdioc::FS_ISO_UDF;
*FS_ANAL_XA = *perlcdioc::FS_ANAL_XA;
*FS_ANAL_MULTISESSION = *perlcdioc::FS_ANAL_MULTISESSION;
*FS_ANAL_PHOTO_CD = *perlcdioc::FS_ANAL_PHOTO_CD;
*FS_ANAL_HIDDEN_TRACK = *perlcdioc::FS_ANAL_HIDDEN_TRACK;
*FS_ANAL_CDTV = *perlcdioc::FS_ANAL_CDTV;
*FS_ANAL_BOOTABLE = *perlcdioc::FS_ANAL_BOOTABLE;
*FS_ANAL_VIDEOCD = *perlcdioc::FS_ANAL_VIDEOCD;
*FS_ANAL_ROCKRIDGE = *perlcdioc::FS_ANAL_ROCKRIDGE;
*FS_ANAL_JOLIET = *perlcdioc::FS_ANAL_JOLIET;
*FS_ANAL_SVCD = *perlcdioc::FS_ANAL_SVCD;
*FS_ANAL_CVD = *perlcdioc::FS_ANAL_CVD;
*FS_ANAL_XISO = *perlcdioc::FS_ANAL_XISO;
*FS_MATCH_ALL = *perlcdioc::FS_MATCH_ALL;
*FS_UNKNOWN = *perlcdioc::FS_UNKNOWN;
*hw_info = *perlcdioc::hw_info;
*DISC_MODE_CD_DA = *perlcdioc::DISC_MODE_CD_DA;
*DISC_MODE_CD_DATA = *perlcdioc::DISC_MODE_CD_DATA;
*DISC_MODE_CD_XA = *perlcdioc::DISC_MODE_CD_XA;
*DISC_MODE_CD_MIXED = *perlcdioc::DISC_MODE_CD_MIXED;
*DISC_MODE_DVD_ROM = *perlcdioc::DISC_MODE_DVD_ROM;
*DISC_MODE_DVD_RAM = *perlcdioc::DISC_MODE_DVD_RAM;
*DISC_MODE_DVD_R = *perlcdioc::DISC_MODE_DVD_R;
*DISC_MODE_DVD_RW = *perlcdioc::DISC_MODE_DVD_RW;
*DISC_MODE_DVD_PR = *perlcdioc::DISC_MODE_DVD_PR;
*DISC_MODE_DVD_PRW = *perlcdioc::DISC_MODE_DVD_PRW;
*DISC_MODE_DVD_OTHER = *perlcdioc::DISC_MODE_DVD_OTHER;
*DISC_MODE_NO_INFO = *perlcdioc::DISC_MODE_NO_INFO;
*DISC_MODE_ERROR = *perlcdioc::DISC_MODE_ERROR;
*DISC_MODE_CD_I = *perlcdioc::DISC_MODE_CD_I;

import Device::Cdio::VERSION;
$VERSION = $Device::Cdio::VERSION;
use strict;
=pod

=head1 NAME

perlcdio - lower-level wrapper to libcdio, the CD Input and Control library

=head1 SYNOPSIS

This is fairly straight-forward wrapper around the C library libcdio.
Although this is perfectly usable on its own, it is expected that the
Object-Oriented interface L<Device::Cdio> is what most people will
want to use. 

There are various constants that are defined here.

=head1 DESCRIPTION

Encapsulation is done in two parts. The lower-level Perl
interface is called perlcdio (this file) and is generated via SWIG.

=head1 CONSTANTS

=head2 Driver ID's 

=over 4

=item DRIVER_UNKNOWN

Use when you don't know what kind of driver and you don't care if it
is an CD image driver or a real CD-ROM driver. See also DRIVER_DEVICE
which doesn't include image drivers.

=item DRIVER_AIX

Driver for IBM's AIX.

=item DRIVER_BSDI

Driver for BSDI. 

=item DRIVER_FREEBSD

Driver for Free BSD

=item DRIVER_LINUX

Driver for GNU/LINUX 

=item DRIVER_SOLARIS

Driver for Solaris 

=item DRIVER_OSX

Driver for Apple's OS X.

=item DRIVER_WIN32

Driver for Microsoft Windows

=item DRIVER_CDRDAO

Image Driver for cdrdao

=item DRIVER_BINCUE

Image driver for CDRWin BIN/CUE 

=item DRIVER_NRG

Image driver for Nero NRG

=item DRIVER_DEVICE

Use when you don't know what kind of driver but the driver must be a
real CD-ROM driver. See also DRIVER_UNKNOWN which includes image
drivers.

=back 

Real OS driver numbers come before image-disc drivers. Here are
constants that can be used in iteration.

=over 4

=item MIN_DRIVER

Smallest image or OS driver number.

=item MIN_DEVICE_DRIVER

Smallest OS device driver number.

=item MAX_DRIVER

Largest image or OS device driver number.

=item MAX_DEVICE_DRIVER

Largest device driver number.

=back 


=head2 Driver Return codes 

May driver operations return a status code. 

=over 4 

=item DRIVER_OP_SUCCESS

Driver operation was successful

=item DRIVER_OP_ERROR

Driver operation had an error of some sort

=item DRIVER_OP_UNSUPPORTED

Operation is not supported for this driver. For example
ejecting a CD from an image driver.

=item DRIVER_OP_UNINIT

Source is not initialized for this operation. 

=item DRIVER_OP_NOT_PERMITTED

Operation is not permitted 

=item DRIVER_OP_BAD_PARAMETER

An invalid parameter was passed to the routine

=item DRIVER_OP_BAD_POINTER

A pointer somehow got corrupted.

=item DRIVER_OP_NO_DRIVER 

No driver has been set.

=back

=head2 Device Capabilities

=head3 Miscellaneous 

=over 4

=item DRIVE_CAP_ERROR

=item DRIVE_CAP_UNKNOWN

=item DRIVE_CAP_MISC_CLOSE_TRAY

=item DRIVE_CAP_MISC_EJECT

=item DRIVE_CAP_MISC_LOCK	

=item DRIVE_CAP_MISC_SELECT_SPEED

=item DRIVE_CAP_MISC_SELECT_DISC

=item DRIVE_CAP_MISC_MULTI_SESSION

=item DRIVE_CAP_MISC_MEDIA_CHANGED

=item DRIVE_CAP_MISC_RESET

=item DRIVE_CAP_MISC_FILE

=back 

=head3 Read Capabilities

=over 4

=item DRIVE_CAP_READ_AUDIO

=item DRIVE_CAP_READ_CD_DA

=item DRIVE_CAP_READ_CD_G

=item DRIVE_CAP_READ_CD_R

=item DRIVE_CAP_READ_CD_RW

=item DRIVE_CAP_READ_DVD_R

=item DRIVE_CAP_READ_DVD_PR

=item DRIVE_CAP_READ_DVD_RAM

=item DRIVE_CAP_READ_DVD_ROM

=item DRIVE_CAP_READ_DVD_RW

=item DRIVE_CAP_READ_DVD_RPW

=item DRIVE_CAP_READ_C2_ERRS

=item DRIVE_CAP_READ_MODE2_FORM1

=item DRIVE_CAP_READ_MODE2_FORM2

=item DRIVE_CAP_READ_MCN

=item DRIVE_CAP_READ_ISRC

=back

=head2 Writing masks

=over 4 

=item DRIVE_CAP_WRITE_CD_R

=item DRIVE_CAP_WRITE_CD_RW

=item DRIVE_CAP_WRITE_DVD_R

=item DRIVE_CAP_WRITE_DVD_PR

=item DRIVE_CAP_WRITE_DVD_RAM

=item DRIVE_CAP_WRITE_DVD_RW 

=item DRIVE_CAP_WRITE_DVD_RPW

=item DRIVE_CAP_WRITE_MT_RAINIER

=item DRIVE_CAP_WRITE_BURN_PROOF

=back 

=head3 Derived Capabilities

=over 4

=item DRIVE_CAP_WRITE_CD

Has some sort of CD writer ability 

=item DRIVE_CAP_WRITE_DVD

Has some sort of DVD writer ability 

=item DRIVE_CAP_WRITE

Has some sort of writer ability 

=back

=head2 Filesystem type constants

These constants are used in getting drive capabilities:

=over 4

=item FS_AUDIO

audio only - not really a filesystem

=item FS_HIGH_SIERRA

High-Sierra Filesystem

=item FS_ISO_9660

ISO-9660 filesystem

=item FS_INTERACTIVE

=item FS_HFS

file system used on the Macintosh system in MacOS 6 through MacOS 9
and deprecated in OSX

=item FS_UFS

Generic Unix file system derived from the Berkeley fast file 
system.

=item FS_EXT2

EXT2 was the GNU/Linux native filesystem for early kernels. Newer
GNU/Linux OS's may use EXT3 which EXT2 with a journal. 

=item FS_ISO_HFS

both HFS & ISO-9660 filesystem 

=item FS_ISO_9660_INTERACTIVE

both CD-RTOS and ISO filesystem

=item FS_3DO

The 3DO is, technically, a set of specifications created by the 3DO
company.  These specs are for making a 3DO Interactive Multiplayer
which uses a CD-player. Panasonic in the early 90's was the first
company to manufacture and market a 3DO player.

=item FS_XISO

Microsoft X-BOX CD

=item FS_UDFX

=item FS_UDF

=item FS_ISO_UDF

=item FS_ANAL_XA

eXtended Architecture format

=item FS_ANAL_MULTISESSION

CD has multisesion

=item FS_ANAL_PHOTO_CD

Is a Kodak Photo CD

=item FS_ANAL_HIDDEN_TRACK

Hidden track at the beginning the CD

=item FS_ANAL_CDTV

=item FS_ANAL_BOOTABLE

CD is bootable

=item FS_ANAL_VIDEOCD

VCD 1.1

=item FS_ANAL_ROCKRIDGE

Has Rock Ridge Extensions to ISO 9660

=item FS_ANAL_JOLIET

Microsoft Joliet extensions to ISO 9660

=item FS_ANAL_SVCD

Super VCD or Choiji Video CD

=item FS_ANAL_CVD

Choiji Video CD

=item FS_ANAL_XISO

XBOX CD determined by some analysis

=item FS_MATCH_ALL

bitmask which can  be used to specify matching any sort of CD

=back

=head2 Sector size constants

=over 4 

=item CD_FRAMESIZE 

=item CD_FRAMESIZE_RAW 

Size of a Philip Red book CD-DA block. It is also the maximum CD sector 
size possible: 2352 bytes.

=item ISO_BLOCKSIZE

Size of an ISO 9660 block. Also the size of the data portion in CD data 
reads: 2048 bytes.

=item M2F2_SECTOR_SIZE 

Mode 2 Form 2 Data size: 2328 bytes.

=item M2RAW_SECTOR_SIZE

Mod1 Form 1 Data size: 2336 bytes.

=back 

=head2 Reading Modes

=over 4

=item READ_MODE_AUDIO 

audio mode (CD-DA) read. Blocksize is a multiple of
$perlcdio::CD_FRAMESIZE_RAW (2352) bytes.

=item READ_MODE_M1F1  

Mode 1 Form 1 read. Blocksize is a multiple of $perlcdio::CD_FRAMESIZE
(2048) bytes.

=item READ_MODE_M1F2  

Mode 1 Form 2 read. Blocksize is a multiple of $perlcdio::M2RAW_SECTIOR_SIZE
(2336) bytes.

=item READ_MODE_M2F1  

Mode 2 Form 1 read. Blocksize is a multiple of $perlcdio::CD_FRAMESIZE
(2048) bytes.

=item READ_MODE_M2F2  

Mode 2 Form 1 read. Blocksize is a multiple of (2328) bytes.

=back

=head2 Miscellaneous 

=over 4 

=item VERSION_NUM

libcdio version that is getting used

=item INVALID_LBA 

Canonical value used for an invalid LBA.

=item INVALID_LSN

Canonical value used for an invalid LSN.

=item INVALID_TRACK

Canonical value used for an invalid track number. (Valid range 
is 0 to 99.)

=item LEADOUT_TRACK

Canonical value for the "leadout" or track just after the last track. So 
again this value is outside the range 0 to 99.
The leadout track is often used to get the last LSN or LBA. The libcdio
routines also allow the last actual track plus one as a synonym for the
leadout track.

=back 

=head1 METHODS

=head2 cdio_version

    perlcdio::cdio_version

Returns the libcdio version string Device::Cdio is currently linked with.

=head2 this

This seems to be an artifact of SWIG. 

=head1 SEE ALSO

L<http://www.gnu.org/software/libcdio> has documentation on
libcdio including the a manual and the API via doxygen.

=head1 AUTHORS

Rocky Bernstein C<< <rocky at cpan.org> >>.

=head1 COPYRIGHT

Copyright (C) 2006, 2008, 2011 Rocky Bernstein <rocky@cpan.org>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

=cut
1;
