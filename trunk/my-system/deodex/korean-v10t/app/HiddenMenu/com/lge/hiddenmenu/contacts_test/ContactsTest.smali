.class public Lcom/lge/hiddenmenu/contacts_test/ContactsTest;
.super Landroid/app/ListActivity;
.source "ContactsTest.java"


# static fields
.field static final DIALOG_QUERY_MESSAGE:I = 0x1

.field static final DIALOG_WAITE_PROGRESS:I = 0x2

.field private static final HANDLER_MESSAGE_ADD_CONTACS:I = 0x3

.field private static final HANDLER_MESSAGE_ADD_CONTACS_END:I = 0x4

.field private static final HANDLER_MESSAGE_ADD_GROUPS:I = 0x5

.field private static final HANDLER_MESSAGE_ADD_GROUPS_END:I = 0x6

.field private static final HANDLER_MESSAGE_ADD_GROUPS_SYSTEM:I = 0x7

.field private static final HANDLER_MESSAGE_ADD_GROUPS_SYSTEM_END:I = 0x8

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field private static final HANDLER_MESSAGE_QUERY_TEST:I = 0x1

.field private static final HANDLER_MESSAGE_QUERY_TEST_END:I = 0x2

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mActionHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mExcludingDialog:Landroid/app/AlertDialog;

.field private mGroup:[Ljava/lang/String;

.field private mPeople:[Ljava/lang/String;

.field private mflag:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const-string v7, "Actress"

    const-string v6, "Actor,Singer"

    const-string v5, "Singer,Songwriter"

    const-string v4, "Singer"

    const-string v3, "Actor"

    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 486
    const/16 v0, 0xa0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Acacia"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AdamssNeedle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Adonis"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Almond"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AlmondBlossom"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Aloe"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Allspice"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Alyssum(sweet)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Amaranth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Amaranth,Globe"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Amaryllis"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Ambrosia"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Anemone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Apple"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ApricotBlossom"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "AborVitae"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Arbutus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Artemesia"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Asphodel"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Aster"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Azalea"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BabysBreath"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BayWreath"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Begonia"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Bindweed"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Bittersweet"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "BlackthornSloe"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "BlueBell"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Burdock"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Buttercup"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Cactus"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Camellia"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Camomile"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Candytuft"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "CanterburyBell"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CardinalFlower"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Carnation"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CedarLeaf"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Chestnut"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ChinaAster"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Chrysanthemum"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Cinnamon"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Clematis"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Clove"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Clover"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "CockscombCelosia"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Coltsfoot"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Columbine"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Convolvulus"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Coreopsis"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Cornflower"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Crocus"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "CrownImperial"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Cyclamen"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Daffodil"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dahlia"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Daisy"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Dandelion"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Delphinium"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Dogwood"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Edelweiss"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Eglantine"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ElderberryBlossom"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Everlasting"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Fennel"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Fern"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Fir"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Forget-me-not"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Forsynthia"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Fuchsia"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Gardenia"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Geranium,Oak-leaf"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Geranium,Rose"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Gillyflower,Pink"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Gladiolus"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Gloxinia"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Goldenrod"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Heather,Purple"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Heather,Pink"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Heather,White"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Heliotrope"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Hibiscus"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Holly"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Hollyhock"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Honeysuckle"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Hyacinth"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Hydrangea"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Iris"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Ivy"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Jasmine,Red"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Jasmine,White"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Jasmine,Yellow"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Jonquil"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "LadysSlipper"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Larkspur"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Laurel"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Lavender"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Lily-Of-The-Valley"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Lotus"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Magnolia"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Marigold"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Marjoram"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Marvel-Of-Peru"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Mistletoe"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Mimosa"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Myrtle"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Narcissus"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Nasturtium"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Oleander"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "OrangeBlossom"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "OrangeMock"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Orchid"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Pansy"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Passionflower"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "PeachBlossom"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "PearBlossom"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Peony"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Peppermint"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Periwinkle,Blue"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Periwinkle,White"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Petunia"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Phlox"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "PlumBlossom"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Poinsettia"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Poppy"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Poppy,yellow"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Primrose"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Primrose,evening"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "QueenAnnesLace"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "RoseBridal"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Rosemary"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Salvia,Blue"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Smilax"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Snapdragon"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Snowdrop"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Spearmint"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "SpiderFlower"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Statice"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Stephanotis"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Stock"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Sunflower"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "SweetBasil"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "SweetPea"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "SweetWilliam"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrift"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Thyme"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "TigerLily"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Tuberose"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Tulip"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Tulip,Red"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Tulip,Variegated"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Violet"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Viscaria"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Wallflower"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "WaterLily"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Wisteria"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Xeranthemum"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Yarrow"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Zinnia"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Zinnia,Pink"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mGroup:[Ljava/lang/String;

    .line 530
    const/16 v0, 0x5a9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Aaliyah"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v2, "AeliyattDanaHaughtonc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Akon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v2, "AliauneDamalaBougaTimePuruNackaLuLuLuBadaraAkonThiam"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Ashanti"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v2, "AshantiShaquoyaDouglas"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Clay Aiken"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v2, "ClaytonHolmesGrissom"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Alan Alda"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Alphonsed\'Abruzzo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Jason Alexander"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Actor,SingerfromTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "JayScottGreenspan"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Muhammad Ali"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Athlete"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CassiusMarcellusClay,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Woody Allen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Actor,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "AllenStewartKonigsberg"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Tori Amos"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x1a

    const-string v2, "MyraEllenAmos"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Julie Andrews"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SingerActress"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "JuliaElizabethWells"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Ashley ParkerAngel"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x20

    const-string v2, "AshleyWardParker"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Jennifer Aniston"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-string v2, "JenniferLinnAnastassakis"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Adam Ant"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v2, "StuartLeslieGoddard"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Marc Anthony"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x29

    const-string v2, "MarcoAntonioMuniz"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Desi Arnaz"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Actor,Singer,DirectorHusbandinTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "DesiderioAlbertArnazyDeAchaIII"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Fred Astaire"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Actor,Dancer,Singer"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "FrederickAusterlitz"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Babyface"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x32

    const-string v2, "KennethBrianEdmonds"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Beyonce"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x35

    const-string v2, "BeyonceGiselleKnowles"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Bjork"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x38

    const-string v2, "BjorkGudmundsdottir"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Brandy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Actor,SingerTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "BrandyRayondaNorwood"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Lauren Bacall"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "BettyJoanPerske"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Erykah Badu"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x41

    const-string v2, "EricaWright"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Tammy Faye Bakker"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "TamaraFayeLaValley"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "George Balanchine"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Choreographer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "GeorgiMelitonovichBalanchivadze"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Eric Bana"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v2, "EricBanadinovich"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Antonio Banderas"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4d

    const-string v2, "JoseAntonioDominguezBandera"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Theda Bara"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v2, "TheodosiaGoodman"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Brigitte Bardot"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x53

    const-string v2, "CamilleJaval"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "ToniBasil"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "SingerChoreographer"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "AntoniaChristinaBasilotta"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Steven Bauer"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x59

    const-string v2, "RockyEchaveria"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Orson Bean"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "DallasBurrows"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Kate Beckinsale"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x5f

    const-string v2, "KateBeckinsaleLoe"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Pat Benatar"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x62

    const-string v2, "PatriciaAndrzejewski"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Tony Bennett"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x65

    const-string v2, "AnthonyDominickBenedetto"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Irving Berlin"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Composer"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IsraelBaline"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "BoBice"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "SingerMusician"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "HaroldElwinBice,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Josie Bissett"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    const-string v2, "JolynChristineHeutmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Karen Black"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x71

    const-string v2, "KarenBlancheZiegler"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Taurean Blacque"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x74

    const-string v2, "HerbertMiddleton,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Selma Blair"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x77

    const-string v2, "SelmaBlairBeitner"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Robert Blake"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string v2, "MichaelJamesVijencioGubitosi"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Judy Blume"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "JudySussman"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Big Boi"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "FrommusicalgroupOutkast"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "AntwanAndrePatton"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "JonBon Jovi"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Actor,Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "JohnBongiovi"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Lisa Bonet"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v2, "LisaBoney"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Sonny Bono"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Actor,Singer,Politician"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "SalvatoreBono"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "LilBow Wow"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Actor,Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "ShadGregoryMoss"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "David Bowie"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Actor,Singer,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "DavidRobertHayward-Jones"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "DaBrat"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "ShawntaeHarris"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Beau Bridges"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "LloydVernetBridgesIII"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Christie Brinkley"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "ChristieLeeHudson"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Morgan Brittany"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x9b

    const-string v2, "SuzanneCupito"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "James Brolin"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x9e

    const-string v2, "JamesBruderlin"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Josh Brolin"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xa1

    const-string v2, "JoshuaBruderlin"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Charles Bronson"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xa4

    const-string v2, "CharlesDennisBunchinsky"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Garth Brooks"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0xa7

    const-string v2, "TroyalGarthBrooks"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Mel Brooks"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Actor,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "MelvinKaminsky"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Foxy Brown"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "IngaMarchand"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Yul Brynner"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "ActorKinginCinema\'s"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "TaidjeKhan"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "George Burns"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "NathanBirnbaum"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Levar Burton"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xb6

    const-string v2, "LevardisRobertMartynBurtonJr."

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Red Buttons"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "AaronChwatt"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Carrot Top"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "ScottThompson"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Charo"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Actor,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "MariaRosarioPilarMartinezMolinaBaeza"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Cher"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0xc2

    const-string v2, "CherilynSarkasianLaPierre"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Coolio"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "ArtisLeonIveyJr."

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "Nicolas Cage"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xc8

    const-string v2, "NicholasKimCoppola"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "Dean Cain"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xcb

    const-string v2, "DeanTanaka"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Michael Caine"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xce

    const-string v2, "MauriceJosephMicklewhite"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "Dyan Cannon"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xd1

    const-string v2, "SamileDianeFriesen"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Truman Capote"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "TrumanStreckfusPersons"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Kate Capshaw"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0xd7

    const-string v2, "KathleenSueNail"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Irene Cara"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0xda

    const-string v2, "IreneT.Escalera"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Tia Carrere"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0xdd

    const-string v2, "AltheaJanairo"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "Phoebe Cates"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xe0

    const-string v2, "PhoebeKatz"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "Kim Cattrall"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0xe3

    const-string v2, "ClareWoodgate"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "50Cent"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "CurtisJackson"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "Chamillionaire"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "HakeemSeriki"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "Jackie Chan"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "Actor,MartialArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "Kong-SangChan"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "Stockard Channing"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0xef

    const-string v2, "SusanWilliamsAntoniaStockar"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "Cyd Charisse"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "Actor,Dancer"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "TulaElliceFinklea"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "Ray Charles"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0xf5

    const-string v2, "RayCharlesRobinson"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "ChevyChase"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "CorneliusCraneChase"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "J.C.Chasez"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "Singer,N*Sync"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "JoshuaScottChasez"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "Joan.Chen"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0xfe

    const-string v2, "ChongChen"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "JuliaChild"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "Chef,Author"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "JuliaCarolynMcWilliams"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "Chyna"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "Wrestler,TVPersonality"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "JoanMarieLaurer"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "Patsy Cline"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x107

    const-string v2, "VirginiaPattersonHensley"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "NatKing Cole"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x10a

    const-string v2, "NathanielAdamsColes"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "Perry Como"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x10d

    const-string v2, "PierinoRolandComo"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "Coolio"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "ArtisIveyJr."

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Alice Cooper"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x113

    const-string v2, "VincentDamonFurnier"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "David Copperfield"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Magician"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "DavidKotkin"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "Barry Corbin"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x119

    const-string v2, "LeonardBarrieCorbin"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "BudCort"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x11c

    const-string v2, "WalterEdwardCox"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "Elvis Costello"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x11f

    const-string v2, "DeclanPatrickMcManus"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "Peter Coyote"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x122

    const-string v2, "RobertPeterCohon"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "Joan Crawford"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x125

    const-string v2, "LucilleFayLeSueur"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "Michael Crawford"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x128

    const-string v2, "MichaelDumble-Smith"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "Tom Cruise"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x12b

    const-string v2, "ThomasCruiseMapotherIV"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "Celia Cruz"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x12e

    const-string v2, "?sulaHilariaCeliaCaridadCruzAlfonso"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "Penelope Cruz"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x131

    const-string v2, "PenelopeCruzSanchez"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "Ice Cube"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "Actor,Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "OsheaJackson"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "Tony Curtis"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x137

    const-string v2, "BernardSchwartz"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "MileyCyrus"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "ActressSinger"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "DestinyHopeCyrus"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "Dido"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x13d

    const-string v2, "FlorianClouddeBounevialleArmstrong"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "Divine"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x140

    const-string v2, "GlennMilstead"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "Rodney Dangerfield"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "JacobCohen"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "Tony Danza"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x146

    const-string v2, "AnthonyIadanza"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "Bette Davis"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x149

    const-string v2, "RuthElizabethDavis"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "Doris Day"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x14c

    const-string v2, "DorisvonKappelhoff"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "Taylor Dayne"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x14f

    const-string v2, "LeslieWonderman"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "Rebecca DeMornay"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x152

    const-string v2, "RebeccaGeorge"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "Portia DeRossi"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x155

    const-string v2, "AmandaLeeRogers"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "Rick Dees"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "RadioDJ"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "RigdonOsmondDeesIII"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "Mos Def"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "Rapper,Actor"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "DanteTerrellSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "John Denver"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "Actor,Singer,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "HenryJohnDeutschendorfJr."

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "Bo Derek"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "Actor,ModelCinema\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "MaryCathleenCollins"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "CCDe Ville"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "CecilCorneliusDeVille"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "Danny DeVito"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "DanielMichaeli"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "Susan Dey"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x16a

    const-string v2, "SusanSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "Andy Dick"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "ComedianActor"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "AndyThomlinson"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "Bo Diddley"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "OthaEliasBates"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Vin Diesel"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x173

    const-string v2, "MarkVincent"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "Taye Diggs"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x176

    const-string v2, "ScottL.Diggs"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "Snoop Doggy Dogg"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "Actor,Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "CordazerCalvinBroadus"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "Troy Donahue"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x17c

    const-string v2, "MerleJohnson,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "Illeana Douglas"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x17f

    const-string v2, "IlleanaHesselberg"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "Kirk Douglas"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x182

    const-string v2, "IssurDanielovitchDemsky"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "Dr.Dre"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "Singer,Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "AndreYoung"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "Minnie Driver"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x188

    const-string v2, "AmeliaDriver"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "Bob Dylan"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "RobertZimmerman"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "Elvira"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "CassandraPeterson"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "Eminem"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "MarshallBruceMathersIII"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "Enya"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x194

    const-string v2, "EithneNiBhraonian"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "Barbara Eden"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "ActorTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "BarbaraHuffman"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "Carmen Electra"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "Actor,Model"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "TaraPatrick"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "Jenna Elfman"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x19d

    const-string v2, "JenniferMaryButala"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "Cass Elliot"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "EllenNaomiCohen"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "Missy Elliot"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "MelissaArnetteElliott"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "Gloria Estefan"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "GloriaMariaFajardo"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "Erik Estrada"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "HenryEnriqueEstrada"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "Fabian"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "FabianoAnthonyForte"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "Fabio"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "FabioLanzoni"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "Flea"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "Musicianfrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "MichaelBalzary"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "Morgan Fairchild"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "Actor,Model"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "PatsyAnnMcClenny"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "Dakota Fanning"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "HannahDakotaFanning"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "Farrah Fawcett"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "Actor,Model"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "MaryFarrahLoriFawcett"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "Will Ferrell"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "ActorComedian"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "JohnWilliamFerrell"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "Sally Field"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "SallyMahoney"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "W.C. Fields"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "WilliamClaudeDukenfield"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "Larry Fine"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "Actor,Comedianfrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "LouisFeinberg"

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const-string v2, "Jenna Fischer"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v2, "actress"

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const-string v2, "ReginaMarieFischer"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v2, "Errol Flynn"

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1cd

    const-string v2, "LeslieThomsonFlynn"

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const-string v2, "John Forsythe"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1d0

    const-string v2, "JohnLincolnFreund"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v2, "Jodie Foster"

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v2, "AliciaChristianFoster"

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const-string v2, "Jorja Fox"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1d6

    const-string v2, "Jorja-AnFox"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v2, "Jamie Foxx"

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const-string v2, "Actor,Singer,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v2, "EricBishop"

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const-string v2, "Redd Foxx"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const-string v2, "JohnSanford"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v2, "Dennis Franz"

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1df

    const-string v2, "DennisFranzSchlacta"

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const-string v2, "Ginuwine"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x1e2

    const-string v2, "ElginBaylorLumpkin"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v2, "Goya"

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v2, "FranciscoJosedeGoyayLucientes"

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const-string v2, "KennyG"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const-string v2, "KennethGorelick"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v2, "Zsa Zsa Gabor"

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1eb

    const-string v2, "SariGabor"

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const-string v2, "Gret aGarbo"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1ee

    const-string v2, "GretaLovisaGustaffson"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v2, "Andy Garcia"

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1f1

    const-string v2, "AndresArturoGarciaMenendez"

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const-string v2, "Judy Garland"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x1f4

    const-string v2, "FrancesGumm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v2, "James Garner"

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x1f7

    const-string v2, "JamesScottBumgarner"

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const-string v2, "Leif Garrett"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x1fa

    const-string v2, "LeifPerNarvik"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v2, "Boy George"

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x1fd

    const-string v2, "GeorgeAlanO\'Dowd"

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const-string v2, "George Gershwin"

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v2, "Composer"

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const-string v2, "JacobGershowitz"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v2, "KathyLee Gifford"

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const-string v2, "Singer,TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v2, "KathrynEpstein"

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const-string v2, "Peri Gilpin"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x206

    const-string v2, "PeriKayOldham"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v2, "Whoopi Goldberg"

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v2, "CarynElaineJohnson"

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const-string v2, "Lesley Gore"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x20c

    const-string v2, "LesleyGoldstein"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v2, "Elliott Gould"

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x20f

    const-string v2, "ElliotGoldstein"

    aput-object v2, v0, v1

    const/16 v1, 0x210

    const-string v2, "Kelsey Grammer"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x212

    const-string v2, "AllenKelseyGrammer"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v2, "Cary Grant"

    aput-object v2, v0, v1

    const/16 v1, 0x214

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x215

    const-string v2, "ArchibaldLeach"

    aput-object v2, v0, v1

    const/16 v1, 0x216

    const-string v2, "Macy Gray"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x218

    const-string v2, "NatalieReneeMcIntyre"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v2, "El Greco"

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v2, "DomenikosTheotokopoulos"

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    const-string v2, "Robert Guillaume"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x21e

    const-string v2, "RobertPeterWilliams"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v2, "(MC)Hammer"

    aput-object v2, v0, v1

    const/16 v1, 0x220

    const-string v2, "Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v2, "StanleyKirkBurrell"

    aput-object v2, v0, v1

    const/16 v1, 0x222

    const-string v2, "Jean Harlow"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x224

    const-string v2, "HarleanCarpenter"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v2, "Rex Harrison"

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x227

    const-string v2, "ReginaldCareyHarrison"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "Mary Hart"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "MaryJohannaHarum"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "Goldie Hawn"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x22d

    const-string v2, "GoldieJeanStudlendgehawn"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "Rita Hayworth"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x230

    const-string v2, "MargaritaCansino"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "Tippi Hedren"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x233

    const-string v2, "NathalieHedren"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "Marg Helgenberger"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x236

    const-string v2, "MaryMargaretHelgenberger"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "Audrey Hepburn"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x239

    const-string v2, "EddaKathleenvanHeemstraHepburn-Ruston"

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    const-string v2, "PeeWee Herman"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "Actor,Comedian,TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "PaulReubenfeld"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "Benny Hill"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "AlfredHawthornHill"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "Faith Hill"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x242

    const-string v2, "AudreyFaithPerry"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "Hulk Hogan"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "Actor,Wrestler"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "TerryJeanBollea"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "Billie Holiday"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x248

    const-string v2, "EleanoraFagan"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "Judy Holliday"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x24b

    const-string v2, "JudithTuvim"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "Bob Hope"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "LeslieTownesHope"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "Harry Houdini"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "Magician"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "ErichWeiss"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "Curly Howard"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "Actor,Comedianfrom"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "JerryHoward"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "Rock Hudson"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x257

    const-string v2, "LeroyHaroldScherer,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "Engelbert Humperdinck"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x25a

    const-string v2, "ArnoldGeorgeDorsey"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "Olivia Hussey"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x25d

    const-string v2, "OliviaOsuna"

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    const-string v2, "Ice-T"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v2, "Actor,Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x260

    const-string v2, "TracyMorrow"

    aput-object v2, v0, v1

    const/16 v1, 0x261

    const-string v2, "Iman"

    aput-object v2, v0, v1

    const/16 v1, 0x262

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x263

    const-string v2, "ImanAbdulmajid"

    aput-object v2, v0, v1

    const/16 v1, 0x264

    const-string v2, "Janis Ian"

    aput-object v2, v0, v1

    const/16 v1, 0x265

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x266

    const-string v2, "JanisEddyFink"

    aput-object v2, v0, v1

    const/16 v1, 0x267

    const-string v2, "VanillaIce"

    aput-object v2, v0, v1

    const/16 v1, 0x268

    const-string v2, "Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x269

    const-string v2, "RobertVanWinckle"

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    const-string v2, "Billy Idol"

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    const-string v2, "Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    const-string v2, "WilliamBroad"

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    const-string v2, "Jay-Z"

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    const-string v2, "ShawnCoreyCarter"

    aput-object v2, v0, v1

    const/16 v1, 0x270

    const-string v2, "Jewel"

    aput-object v2, v0, v1

    const/16 v1, 0x271

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x272

    const-string v2, "JewelKilcher"

    aput-object v2, v0, v1

    const/16 v1, 0x273

    const-string v2, "Jojo"

    aput-object v2, v0, v1

    const/16 v1, 0x274

    const-string v2, "SingerActress"

    aput-object v2, v0, v1

    const/16 v1, 0x275

    const-string v2, "JoannaNo\ufffdCeLevesque"

    aput-object v2, v0, v1

    const/16 v1, 0x276

    const-string v2, "WolfmanJack"

    aput-object v2, v0, v1

    const/16 v1, 0x277

    const-string v2, "RadioDJ"

    aput-object v2, v0, v1

    const/16 v1, 0x278

    const-string v2, "RobertSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x279

    const-string v2, "EttaJames"

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x27b

    const-string v2, "JamesettaHawkins"

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    const-string v2, "RickJames"

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x27e

    const-string v2, "JamesJohnson"

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    const-string v2, "D.J.Jazzy Jeff"

    aput-object v2, v0, v1

    const/16 v1, 0x280

    const-string v2, "ActorRapper"

    aput-object v2, v0, v1

    const/16 v1, 0x281

    const-string v2, "JeffreyA.Townes"

    aput-object v2, v0, v1

    const/16 v1, 0x282

    const-string v2, "Joan Jett"

    aput-object v2, v0, v1

    const/16 v1, 0x283

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x284

    const-string v2, "JoanLarkin"

    aput-object v2, v0, v1

    const/16 v1, 0x285

    const-string v2, "Ann Jillian"

    aput-object v2, v0, v1

    const/16 v1, 0x286

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x287

    const-string v2, "AnnJuraNauseda"

    aput-object v2, v0, v1

    const/16 v1, 0x288

    const-string v2, "Elton John"

    aput-object v2, v0, v1

    const/16 v1, 0x289

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x28a

    const-string v2, "ReginaldKennethDwight"

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    const-string v2, "Don Johnson"

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x28d

    const-string v2, "DonaldWayne"

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    const-string v2, "Angelina Jolie"

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x290

    const-string v2, "AngelinaJolieVoight"

    aput-object v2, v0, v1

    const/16 v1, 0x291

    const-string v2, "James Earl Jones"

    aput-object v2, v0, v1

    const/16 v1, 0x292

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x293

    const-string v2, "ToddJones"

    aput-object v2, v0, v1

    const/16 v1, 0x294

    const-string v2, "Naomi Judd"

    aput-object v2, v0, v1

    const/16 v1, 0x295

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x296

    const-string v2, "DianaEllenJudd"

    aput-object v2, v0, v1

    const/16 v1, 0x297

    const-string v2, "Wynonna Judd"

    aput-object v2, v0, v1

    const/16 v1, 0x298

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x299

    const-string v2, "ChristinaClaireCiminella"

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    const-string v2, "Kato Kaelin"

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    const-string v2, "ActorFamousWitnessinO.J.Trial"

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    const-string v2, "BrianJerardKaelin"

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    const-string v2, "Donna Karan"

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    const-string v2, "Designer"

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    const-string v2, "DonnaFaske"

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    const-string v2, "Danny Kaye"

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    const-string v2, "Actor,Singer,Dancer"

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    const-string v2, "DavidKaminski"

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    const-string v2, "Elia Kazan"

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    const-string v2, "Director,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    const-string v2, "EliaKazanjoglous"

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    const-string v2, "Diane Keaton"

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2a8

    const-string v2, "DianeHall"

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    const-string v2, "Michael Keaton"

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2ab

    const-string v2, "MichaelDouglas"

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    const-string v2, "Garrison Keillor"

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    const-string v2, "Author,Humorist"

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    const-string v2, "GaryEdwardKeillor"

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    const-string v2, "Toby Keith"

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x2b1

    const-string v2, "TobyKeithCovel"

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    const-string v2, "Alicia Keys"

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x2b4

    const-string v2, "AliciaAugelloCook"

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    const-string v2, "ChakaKhan"

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x2b7

    const-string v2, "CaroleYvetteMarieStevens"

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    const-string v2, "LarryKing"

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    const-string v2, "LarryZeigler"

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    const-string v2, "BenKingsley"

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2bd

    const-string v2, "KrishnaBanji"

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    const-string v2, "TawnyKitaen"

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x2c0

    const-string v2, "JulieKitaen"

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    const-string v2, "EarthaKitt"

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x2c3

    const-string v2, "EarthaKeith"

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    const-string v2, "TedKnight"

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2c6

    const-string v2, "TadeusWladyslawKonopka"

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    const-string v2, "Apollonia Kotero"

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    const-string v2, "Model,Singer"

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    const-string v2, "PatriciaKotero"

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    const-string v2, "Ashton Kutcher"

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2cc

    const-string v2, "ChristopherAshtonKutcher"

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    const-string v2, "Liberace"

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    const-string v2, "WladziuLeeValentino"

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    const-string v2, "LLCoolJ"

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    const-string v2, "Singer,Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    const-string v2, "JamesToddSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    const-string v2, "Ludacris"

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    const-string v2, "ChristopherBridges"

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    const-string v2, "PattiLa Belle"

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x2d8

    const-string v2, "PatriciaLouiseHolte"

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    const-string v2, "Cheryl Ladd"

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x2db

    const-string v2, "CherylStoppelmoor"

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    const-string v2, "Veronica Lake"

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2de

    const-string v2, "ConstanceOckleman"

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    const-string v2, "Hedy Lamarr"

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2e1

    const-string v2, "HedwigEvaMariaKiesler"

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    const-string v2, "Ann Landers"

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    const-string v2, "AdviceColumnist"

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    const-string v2, "Esther PaulineFriedmanLederer"

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    const-string v2, "Michael Landon"

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    const-string v2, "Actor,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    const-string v2, "EugeneOrowitz"

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    const-string v2, "Nathan Lane"

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x2ea

    const-string v2, "JosephLane"

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    const-string v2, "Queen Latifah"

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    const-string v2, "Actor,Singer,Rapper,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    const-string v2, "DanaOwens"

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    const-string v2, "Estee Lauder"

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    const-string v2, "CosmeticsMogul"

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    const-string v2, "JosephineEstherMentzer"

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    const-string v2, "Stan Laurel"

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    const-string v2, "ArthurJefferson"

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    const-string v2, "Ralph Lauren"

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    const-string v2, "Designer"

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    const-string v2, "RalphLipschitz"

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    const-string v2, "Hugh Laurie"

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2f9

    const-string v2, "JamesHughCalumLaurie"

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    const-string v2, "Piper Laurie"

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x2fc

    const-string v2, "RosettaJacobs"

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    const-string v2, "Lucy Lawless"

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x2ff

    const-string v2, "LucilleFrancesRyan"

    aput-object v2, v0, v1

    const/16 v1, 0x300

    const-string v2, "Joey Lawrence"

    aput-object v2, v0, v1

    const/16 v1, 0x301

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x302

    const-string v2, "JosephLawrenceMignogna,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x303

    const-string v2, "John LeCarre"

    aput-object v2, v0, v1

    const/16 v1, 0x304

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x305

    const-string v2, "DavidCornwell"

    aput-object v2, v0, v1

    const/16 v1, 0x306

    const-string v2, "Heath Ledger"

    aput-object v2, v0, v1

    const/16 v1, 0x307

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x308

    const-string v2, "HeathcliffAndrewLedger"

    aput-object v2, v0, v1

    const/16 v1, 0x309

    const-string v2, "Gypsy RoseLee"

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    const-string v2, "ActressEntertainer"

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    const-string v2, "RoseLouiseHovick"

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    const-string v2, "Peggy Lee"

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x30e

    const-string v2, "NormaEgstrom"

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    const-string v2, "Spike Lee"

    aput-object v2, v0, v1

    const/16 v1, 0x310

    const-string v2, "Actor,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x311

    const-string v2, "SheltonJacksonLee"

    aput-object v2, v0, v1

    const/16 v1, 0x312

    const-string v2, "Tommy Lee"

    aput-object v2, v0, v1

    const/16 v1, 0x313

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x314

    const-string v2, "TommyLeeBass"

    aput-object v2, v0, v1

    const/16 v1, 0x315

    const-string v2, "Jennifer JasonLeigh"

    aput-object v2, v0, v1

    const/16 v1, 0x316

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x317

    const-string v2, "JenniferLeeMorrow"

    aput-object v2, v0, v1

    const/16 v1, 0x318

    const-string v2, "Vivien Leigh"

    aput-object v2, v0, v1

    const/16 v1, 0x319

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x31a

    const-string v2, "VivianMaryHartley"

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    const-string v2, "Jay Leno"

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    const-string v2, "JamesDouglasMuirLeno"

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    const-string v2, "Tea Leoni"

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x320

    const-string v2, "ElizabethTeaPantaleoni"

    aput-object v2, v0, v1

    const/16 v1, 0x321

    const-string v2, "Huey Lewis"

    aput-object v2, v0, v1

    const/16 v1, 0x322

    const-string v2, "Actor,Singer,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x323

    const-string v2, "HughCregg"

    aput-object v2, v0, v1

    const/16 v1, 0x324

    const-string v2, "Jerry Lewis"

    aput-object v2, v0, v1

    const/16 v1, 0x325

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x326

    const-string v2, "JosephLevitch"

    aput-object v2, v0, v1

    const/16 v1, 0x327

    const-string v2, "Shari Lewis"

    aput-object v2, v0, v1

    const/16 v1, 0x328

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x329

    const-string v2, "ShariHurwitz"

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    const-string v2, "JetLi"

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    const-string v2, "MartialArtistActor"

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    const-string v2, "LiLianJie"

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    const-string v2, "Evangeline Lilly"

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x32f

    const-string v2, "NicoleEvangelineLilly"

    aput-object v2, v0, v1

    const/16 v1, 0x330

    const-string v2, "Hal Linden"

    aput-object v2, v0, v1

    const/16 v1, 0x331

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x332

    const-string v2, "HaroldLipschitz"

    aput-object v2, v0, v1

    const/16 v1, 0x333

    const-string v2, "Meat Loaf"

    aput-object v2, v0, v1

    const/16 v1, 0x334

    const-string v2, "Actor,Singer,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x335

    const-string v2, "MarvinLeeAday"

    aput-object v2, v0, v1

    const/16 v1, 0x336

    const-string v2, "Traci Lords"

    aput-object v2, v0, v1

    const/16 v1, 0x337

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x338

    const-string v2, "NoraLouiseKuzma"

    aput-object v2, v0, v1

    const/16 v1, 0x339

    const-string v2, "Sophia Loren"

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x33b

    const-string v2, "SophiaScicoloni"

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    const-string v2, "Peter Lorre"

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x33e

    const-string v2, "LaszloLowenstein"

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    const-string v2, "Tina Louise"

    aput-object v2, v0, v1

    const/16 v1, 0x340

    const-string v2, "ActorGingeron \'sIsland"

    aput-object v2, v0, v1

    const/16 v1, 0x341

    const-string v2, "TinaBlacker"

    aput-object v2, v0, v1

    const/16 v1, 0x342

    const-string v2, "Courtney Love"

    aput-object v2, v0, v1

    const/16 v1, 0x343

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x344

    const-string v2, "LoveMichelleHarrison"

    aput-object v2, v0, v1

    const/16 v1, 0x345

    const-string v2, "Madonna"

    aput-object v2, v0, v1

    const/16 v1, 0x346

    const-string v2, "Actor,Singer,Songwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x347

    const-string v2, "MadonnaLouiseCiccone"

    aput-object v2, v0, v1

    const/16 v1, 0x348

    const-string v2, "Moby"

    aput-object v2, v0, v1

    const/16 v1, 0x349

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x34a

    const-string v2, "RichardMelvilleHall"

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    const-string v2, "BernieMac"

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    const-string v2, "BernardJefferyMcCullough"

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    const-string v2, "Andie Mac Dowell"

    aput-object v2, v0, v1

    const/16 v1, 0x34f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x350

    const-string v2, "RosalieAndersonMacDowell"

    aput-object v2, v0, v1

    const/16 v1, 0x351

    const-string v2, "Shirley Mac Laine"

    aput-object v2, v0, v1

    const/16 v1, 0x352

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x353

    const-string v2, "ShirleyBeaty"

    aput-object v2, v0, v1

    const/16 v1, 0x354

    const-string v2, "Elle Mac Pherson"

    aput-object v2, v0, v1

    const/16 v1, 0x355

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x356

    const-string v2, "EleanorGow"

    aput-object v2, v0, v1

    const/16 v1, 0x357

    const-string v2, "Lee Majors"

    aput-object v2, v0, v1

    const/16 v1, 0x358

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x359

    const-string v2, "HarveyLeeYearyII"

    aput-object v2, v0, v1

    const/16 v1, 0x35a

    const-string v2, "Method Man"

    aput-object v2, v0, v1

    const/16 v1, 0x35b

    const-string v2, "Actor,Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x35c

    const-string v2, "CliffordSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x35d

    const-string v2, "Camryn Manheim"

    aput-object v2, v0, v1

    const/16 v1, 0x35e

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x35f

    const-string v2, "DebraFrancesManheim"

    aput-object v2, v0, v1

    const/16 v1, 0x360

    const-string v2, "Barry Manilow"

    aput-object v2, v0, v1

    const/16 v1, 0x361

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x362

    const-string v2, "BarryAllenPincus"

    aput-object v2, v0, v1

    const/16 v1, 0x363

    const-string v2, "Jayne Mansfield"

    aput-object v2, v0, v1

    const/16 v1, 0x364

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x365

    const-string v2, "VeraJanePalmer"

    aput-object v2, v0, v1

    const/16 v1, 0x366

    const-string v2, "Marilyn Manson"

    aput-object v2, v0, v1

    const/16 v1, 0x367

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x368

    const-string v2, "BrianHughWarner"

    aput-object v2, v0, v1

    const/16 v1, 0x369

    const-string v2, "Teena Marie"

    aput-object v2, v0, v1

    const/16 v1, 0x36a

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x36b

    const-string v2, "MaryChristineBrockert"

    aput-object v2, v0, v1

    const/16 v1, 0x36c

    const-string v2, "Bob Marley"

    aput-object v2, v0, v1

    const/16 v1, 0x36d

    const-string v2, "SingerSongwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x36e

    const-string v2, "NestaRobertMarley"

    aput-object v2, v0, v1

    const/16 v1, 0x36f

    const-string v2, "Garry Marshall"

    aput-object v2, v0, v1

    const/16 v1, 0x370

    const-string v2, "Director,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x371

    const-string v2, "GarryMaschiarelli"

    aput-object v2, v0, v1

    const/16 v1, 0x372

    const-string v2, "Penny Marshall"

    aput-object v2, v0, v1

    const/16 v1, 0x373

    const-string v2, "Actor,Director,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x374

    const-string v2, "CarolePennyMaschiarelli"

    aput-object v2, v0, v1

    const/16 v1, 0x375

    const-string v2, "Peter Marshall"

    aput-object v2, v0, v1

    const/16 v1, 0x376

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x377

    const-string v2, "PierreLaCock"

    aput-object v2, v0, v1

    const/16 v1, 0x378

    const-string v2, "Dean Martin"

    aput-object v2, v0, v1

    const/16 v1, 0x379

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x37a

    const-string v2, "DinoCrocetti"

    aput-object v2, v0, v1

    const/16 v1, 0x37b

    const-string v2, "Ricky Martin"

    aput-object v2, v0, v1

    const/16 v1, 0x37c

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x37d

    const-string v2, "EnriqueJoseMartinMorales"

    aput-object v2, v0, v1

    const/16 v1, 0x37e

    const-string v2, "AMartinez"

    aput-object v2, v0, v1

    const/16 v1, 0x37f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x380

    const-string v2, "AdolphLarrueMartinez,III"

    aput-object v2, v0, v1

    const/16 v1, 0x381

    const-string v2, "Groucho Marx"

    aput-object v2, v0, v1

    const/16 v1, 0x382

    const-string v2, "Comedian,TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x383

    const-string v2, "JuliusMarx"

    aput-object v2, v0, v1

    const/16 v1, 0x384

    const-string v2, "Harpo Marx"

    aput-object v2, v0, v1

    const/16 v1, 0x385

    const-string v2, "Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x386

    const-string v2, "AdolphMarx"

    aput-object v2, v0, v1

    const/16 v1, 0x387

    const-string v2, "Walter Matthau"

    aput-object v2, v0, v1

    const/16 v1, 0x388

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x389

    const-string v2, "WalterMatuschanskayasky"

    aput-object v2, v0, v1

    const/16 v1, 0x38a

    const-string v2, "EdMc Bain"

    aput-object v2, v0, v1

    const/16 v1, 0x38b

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x38c

    const-string v2, "SalvatoreAlbertLombino"

    aput-object v2, v0, v1

    const/16 v1, 0x38d

    const-string v2, "Spanky Mc Farland"

    aput-object v2, v0, v1

    const/16 v1, 0x38e

    const-string v2, "Actor-LittleRascals"

    aput-object v2, v0, v1

    const/16 v1, 0x38f

    const-string v2, "GeorgeRobertPhillipsMcFarland"

    aput-object v2, v0, v1

    const/16 v1, 0x390

    const-string v2, "Christine McVie"

    aput-object v2, v0, v1

    const/16 v1, 0x391

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x392

    const-string v2, "ChristineAnnePerfect"

    aput-object v2, v0, v1

    const/16 v1, 0x393

    const-string v2, "Freddy Mercury"

    aput-object v2, v0, v1

    const/16 v1, 0x394

    const-string v2, "Singer,SongwriterLeadsingerof"

    aput-object v2, v0, v1

    const/16 v1, 0x395

    const-string v2, "FaroukBulsara"

    aput-object v2, v0, v1

    const/16 v1, 0x396

    const-string v2, "George Michael"

    aput-object v2, v0, v1

    const/16 v1, 0x397

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x398

    const-string v2, "GeorgiosKyriacosPanayiotou"

    aput-object v2, v0, v1

    const/16 v1, 0x399

    const-string v2, "Lorne Michaels"

    aput-object v2, v0, v1

    const/16 v1, 0x39a

    const-string v2, "TelevisionProducer"

    aput-object v2, v0, v1

    const/16 v1, 0x39b

    const-string v2, "LorneMichaelLipowitz"

    aput-object v2, v0, v1

    const/16 v1, 0x39c

    const-string v2, "Michael Michele"

    aput-object v2, v0, v1

    const/16 v1, 0x39d

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x39e

    const-string v2, "MichaelMicheleWilliams"

    aput-object v2, v0, v1

    const/16 v1, 0x39f

    const-string v2, "Joni Mitchell"

    aput-object v2, v0, v1

    const/16 v1, 0x3a0

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x3a1

    const-string v2, "RobertaJoanAnderson"

    aput-object v2, v0, v1

    const/16 v1, 0x3a2

    const-string v2, "Marilyn Monroe"

    aput-object v2, v0, v1

    const/16 v1, 0x3a3

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x3a4

    const-string v2, "NormaJeaneMortenson"

    aput-object v2, v0, v1

    const/16 v1, 0x3a5

    const-string v2, "Yves Montand"

    aput-object v2, v0, v1

    const/16 v1, 0x3a6

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3a7

    const-string v2, "IvoLivi"

    aput-object v2, v0, v1

    const/16 v1, 0x3a8

    const-string v2, "Poppy Montgomery"

    aput-object v2, v0, v1

    const/16 v1, 0x3a9

    const-string v2, "actress"

    aput-object v2, v0, v1

    const/16 v1, 0x3aa

    const-string v2, "PoppyPetalEmmaElizabethDeverauxDonahue"

    aput-object v2, v0, v1

    const/16 v1, 0x3ab

    const-string v2, "Bridget Monynahan"

    aput-object v2, v0, v1

    const/16 v1, 0x3ac

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x3ad

    const-string v2, "KathrynBridgetMoynahan"

    aput-object v2, v0, v1

    const/16 v1, 0x3ae

    const-string v2, "Demi Moore"

    aput-object v2, v0, v1

    const/16 v1, 0x3af

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3b0

    const-string v2, "DemetriaGeneGuynes"

    aput-object v2, v0, v1

    const/16 v1, 0x3b1

    const-string v2, "Julianne Moore"

    aput-object v2, v0, v1

    const/16 v1, 0x3b2

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3b3

    const-string v2, "JulieAnneSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x3b4

    const-string v2, "Rita Moreno"

    aput-object v2, v0, v1

    const/16 v1, 0x3b5

    const-string v2, "Actor,Singer,Dancer"

    aput-object v2, v0, v1

    const/16 v1, 0x3b6

    const-string v2, "RositaDoloresAlverio"

    aput-object v2, v0, v1

    const/16 v1, 0x3b7

    const-string v2, "Toni Morrison"

    aput-object v2, v0, v1

    const/16 v1, 0x3b8

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x3b9

    const-string v2, "ChloeAnthonyWofford"

    aput-object v2, v0, v1

    const/16 v1, 0x3ba

    const-string v2, "Jelly Roll Morton"

    aput-object v2, v0, v1

    const/16 v1, 0x3bb

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x3bc

    const-string v2, "FerdinandJosephLamothe"

    aput-object v2, v0, v1

    const/16 v1, 0x3bd

    const-string v2, "Nelly"

    aput-object v2, v0, v1

    const/16 v1, 0x3be

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x3bf

    const-string v2, "CornellHaynesJr."

    aput-object v2, v0, v1

    const/16 v1, 0x3c0

    const-string v2, "LiamNeeson"

    aput-object v2, v0, v1

    const/16 v1, 0x3c1

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3c2

    const-string v2, "WilliamJohnNeeson"

    aput-object v2, v0, v1

    const/16 v1, 0x3c3

    const-string v2, "Vince Neil"

    aput-object v2, v0, v1

    const/16 v1, 0x3c4

    const-string v2, "Singer,SongwriterfromthebandMotleyCrue"

    aput-object v2, v0, v1

    const/16 v1, 0x3c5

    const-string v2, "VincentNeilWharton"

    aput-object v2, v0, v1

    const/16 v1, 0x3c6

    const-string v2, "Sam Neill"

    aput-object v2, v0, v1

    const/16 v1, 0x3c7

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3c8

    const-string v2, "NigelNeill"

    aput-object v2, v0, v1

    const/16 v1, 0x3c9

    const-string v2, "Bebe Neuwirth"

    aput-object v2, v0, v1

    const/16 v1, 0x3ca

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x3cb

    const-string v2, "BeatriceNeuwirth"

    aput-object v2, v0, v1

    const/16 v1, 0x3cc

    const-string v2, "Julie Newmar"

    aput-object v2, v0, v1

    const/16 v1, 0x3cd

    const-string v2, "ActorTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x3ce

    const-string v2, "JuliaCharleneNewmeyer"

    aput-object v2, v0, v1

    const/16 v1, 0x3cf

    const-string v2, "Juice Newton"

    aput-object v2, v0, v1

    const/16 v1, 0x3d0

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x3d1

    const-string v2, "JudyCohen"

    aput-object v2, v0, v1

    const/16 v1, 0x3d2

    const-string v2, "Mike Nichols"

    aput-object v2, v0, v1

    const/16 v1, 0x3d3

    const-string v2, "Director"

    aput-object v2, v0, v1

    const/16 v1, 0x3d4

    const-string v2, "MichaelIgorPeschowsky"

    aput-object v2, v0, v1

    const/16 v1, 0x3d5

    const-string v2, "Chuck Norris"

    aput-object v2, v0, v1

    const/16 v1, 0x3d6

    const-string v2, "Actor,MartialArtist"

    aput-object v2, v0, v1

    const/16 v1, 0x3d7

    const-string v2, "CarlosRay"

    aput-object v2, v0, v1

    const/16 v1, 0x3d8

    const-string v2, "Kim Novak"

    aput-object v2, v0, v1

    const/16 v1, 0x3d9

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x3da

    const-string v2, "MarilynPaulineNovak"

    aput-object v2, v0, v1

    const/16 v1, 0x3db

    const-string v2, "Laura Nyro"

    aput-object v2, v0, v1

    const/16 v1, 0x3dc

    const-string v2, "SingerSongwriter"

    aput-object v2, v0, v1

    const/16 v1, 0x3dd

    const-string v2, "LauraNigro"

    aput-object v2, v0, v1

    const/16 v1, 0x3de

    const-string v2, "Billy Ocean"

    aput-object v2, v0, v1

    const/16 v1, 0x3df

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x3e0

    const-string v2, "LeslieSebastianCharles"

    aput-object v2, v0, v1

    const/16 v1, 0x3e1

    const-string v2, "Gary Oldman"

    aput-object v2, v0, v1

    const/16 v1, 0x3e2

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3e3

    const-string v2, "LeonardGaryOldman"

    aput-object v2, v0, v1

    const/16 v1, 0x3e4

    const-string v2, "Tony Orlando"

    aput-object v2, v0, v1

    const/16 v1, 0x3e5

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x3e6

    const-string v2, "MichaelAnthonyOrlandoCassavitis"

    aput-object v2, v0, v1

    const/16 v1, 0x3e7

    const-string v2, "OzzyOsbourne"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x3e9

    const-string v2, "JohnMichaelOsbourne"

    aput-object v2, v0, v1

    const/16 v1, 0x3ea

    const-string v2, "MarieOsmond"

    aput-object v2, v0, v1

    const/16 v1, 0x3eb

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x3ec

    const-string v2, "OliveMarieOsmond"

    aput-object v2, v0, v1

    const/16 v1, 0x3ed

    const-string v2, "FrankOz"

    aput-object v2, v0, v1

    const/16 v1, 0x3ee

    const-string v2, "Filmmaker,"

    aput-object v2, v0, v1

    const/16 v1, 0x3ef

    const-string v2, "FrankOznowicz"

    aput-object v2, v0, v1

    const/16 v1, 0x3f0

    const-string v2, "Pele"

    aput-object v2, v0, v1

    const/16 v1, 0x3f1

    const-string v2, "Athlete"

    aput-object v2, v0, v1

    const/16 v1, 0x3f2

    const-string v2, "EdsonArantesdoNascimento"

    aput-object v2, v0, v1

    const/16 v1, 0x3f3

    const-string v2, "Pink"

    aput-object v2, v0, v1

    const/16 v1, 0x3f4

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x3f5

    const-string v2, "AleciaMoore"

    aput-object v2, v0, v1

    const/16 v1, 0x3f6

    const-string v2, "Prince"

    aput-object v2, v0, v1

    const/16 v1, 0x3f7

    const-string v2, "Actor,Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x3f8

    const-string v2, "PrinceRogersNelson"

    aput-object v2, v0, v1

    const/16 v1, 0x3f9

    const-string v2, "Jack Palance"

    aput-object v2, v0, v1

    const/16 v1, 0x3fa

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3fb

    const-string v2, "WalterPalanuik"

    aput-object v2, v0, v1

    const/16 v1, 0x3fc

    const-string v2, "Chazz Palmintieri"

    aput-object v2, v0, v1

    const/16 v1, 0x3fd

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x3fe

    const-string v2, "CalogeroLorenzoPalminteri"

    aput-object v2, v0, v1

    const/16 v1, 0x3ff

    const-string v2, "Butch Patrick"

    aput-object v2, v0, v1

    const/16 v1, 0x400

    const-string v2, "ActorTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x401

    const-string v2, "PatrickAllanLilley"

    aput-object v2, v0, v1

    const/16 v1, 0x402

    const-string v2, "Les Paul"

    aput-object v2, v0, v1

    const/16 v1, 0x403

    const-string v2, "Musician,InventorofElectricGuitar"

    aput-object v2, v0, v1

    const/16 v1, 0x404

    const-string v2, "LesterWilliamPolsfuss"

    aput-object v2, v0, v1

    const/16 v1, 0x405

    const-string v2, "Minnie Pearl"

    aput-object v2, v0, v1

    const/16 v1, 0x406

    const-string v2, "Comedian-GrandOleOpry"

    aput-object v2, v0, v1

    const/16 v1, 0x407

    const-string v2, "SarahOpheliaColley"

    aput-object v2, v0, v1

    const/16 v1, 0x408

    const-string v2, "Gregory Peck"

    aput-object v2, v0, v1

    const/16 v1, 0x409

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x40a

    const-string v2, "EldredGregoryPeck"

    aput-object v2, v0, v1

    const/16 v1, 0x40b

    const-string v2, "Ty Pennington"

    aput-object v2, v0, v1

    const/16 v1, 0x40c

    const-string v2, "CarpenterTVPersonality"

    aput-object v2, v0, v1

    const/16 v1, 0x40d

    const-string v2, "TygertBrutonPennington"

    aput-object v2, v0, v1

    const/16 v1, 0x40e

    const-string v2, "LukePerry"

    aput-object v2, v0, v1

    const/16 v1, 0x40f

    const-string v2, "ActorfromTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x410

    const-string v2, "CoyLutherPerryIII"

    aput-object v2, v0, v1

    const/16 v1, 0x411

    const-string v2, "Bernadette Peters"

    aput-object v2, v0, v1

    const/16 v1, 0x412

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x413

    const-string v2, "BernadetteLazaro"

    aput-object v2, v0, v1

    const/16 v1, 0x414

    const-string v2, "EmoPhillips"

    aput-object v2, v0, v1

    const/16 v1, 0x415

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x416

    const-string v2, "PhilSoltanec"

    aput-object v2, v0, v1

    const/16 v1, 0x417

    const-string v2, "LouDiamond Phillips"

    aput-object v2, v0, v1

    const/16 v1, 0x418

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x419

    const-string v2, "LouUpchurch"

    aput-object v2, v0, v1

    const/16 v1, 0x41a

    const-string v2, "Michelle Phillips"

    aput-object v2, v0, v1

    const/16 v1, 0x41b

    const-string v2, "Singerfrom"

    aput-object v2, v0, v1

    const/16 v1, 0x41c

    const-string v2, "HollyMichelleGilliam"

    aput-object v2, v0, v1

    const/16 v1, 0x41d

    const-string v2, "River Phoenix"

    aput-object v2, v0, v1

    const/16 v1, 0x41e

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x41f

    const-string v2, "RiverJudeBottom"

    aput-object v2, v0, v1

    const/16 v1, 0x420

    const-string v2, "Brad Pitt"

    aput-object v2, v0, v1

    const/16 v1, 0x421

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x422

    const-string v2, "WilliamBradleyPitt"

    aput-object v2, v0, v1

    const/16 v1, 0x423

    const-string v2, "Roman Polanski"

    aput-object v2, v0, v1

    const/16 v1, 0x424

    const-string v2, "Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x425

    const-string v2, "RamonLeibling"

    aput-object v2, v0, v1

    const/16 v1, 0x426

    const-string v2, "IggyPop"

    aput-object v2, v0, v1

    const/16 v1, 0x427

    const-string v2, "Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x428

    const-string v2, "JamesJewelOsterberg"

    aput-object v2, v0, v1

    const/16 v1, 0x429

    const-string v2, "Natalie Portman"

    aput-object v2, v0, v1

    const/16 v1, 0x42a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x42b

    const-string v2, "NatalieHershlag"

    aput-object v2, v0, v1

    const/16 v1, 0x42c

    const-string v2, "CCH Pounder"

    aput-object v2, v0, v1

    const/16 v1, 0x42d

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x42e

    const-string v2, "CarolChristineHilariaPounder"

    aput-object v2, v0, v1

    const/16 v1, 0x42f

    const-string v2, "Stephanie Powers"

    aput-object v2, v0, v1

    const/16 v1, 0x430

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x431

    const-string v2, "StefaniaFederkiewicz"

    aput-object v2, v0, v1

    const/16 v1, 0x432

    const-string v2, "Victoria Principal"

    aput-object v2, v0, v1

    const/16 v1, 0x433

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x434

    const-string v2, "ConcettinaPrincipale"

    aput-object v2, v0, v1

    const/16 v1, 0x435

    const-string v2, "Freddy Prinze"

    aput-object v2, v0, v1

    const/16 v1, 0x436

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x437

    const-string v2, "FrederickKarlPruetzel"

    aput-object v2, v0, v1

    const/16 v1, 0x438

    const-string v2, "Tony Randall"

    aput-object v2, v0, v1

    const/16 v1, 0x439

    const-string v2, "ActorFromTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x43a

    const-string v2, "LeonardRosenberg"

    aput-object v2, v0, v1

    const/16 v1, 0x43b

    const-string v2, "Robert Redford"

    aput-object v2, v0, v1

    const/16 v1, 0x43c

    const-string v2, "Actor,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x43d

    const-string v2, "CharlesRobertRedford,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x43e

    const-string v2, "Della Reese"

    aput-object v2, v0, v1

    const/16 v1, 0x43f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x440

    const-string v2, "DelloreesePatriciaEarly"

    aput-object v2, v0, v1

    const/16 v1, 0x441

    const-string v2, "Judge Reinhold"

    aput-object v2, v0, v1

    const/16 v1, 0x442

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x443

    const-string v2, "EdwardErnestReinholdJr."

    aput-object v2, v0, v1

    const/16 v1, 0x444

    const-string v2, "Busta Rhymes"

    aput-object v2, v0, v1

    const/16 v1, 0x445

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x446

    const-string v2, "TrevorTahiemSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x447

    const-string v2, "Anne Rice"

    aput-object v2, v0, v1

    const/16 v1, 0x448

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x449

    const-string v2, "HowardAllenO\'Brien"

    aput-object v2, v0, v1

    const/16 v1, 0x44a

    const-string v2, "Joan Rivers"

    aput-object v2, v0, v1

    const/16 v1, 0x44b

    const-string v2, "Comedian,TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x44c

    const-string v2, "JoanSandraMolinsky"

    aput-object v2, v0, v1

    const/16 v1, 0x44d

    const-string v2, "Tony Robbins"

    aput-object v2, v0, v1

    const/16 v1, 0x44e

    const-string v2, "SelfHelpSpeaker,Marketeer"

    aput-object v2, v0, v1

    const/16 v1, 0x44f

    const-string v2, "AnthonyJ.Mahavorick"

    aput-object v2, v0, v1

    const/16 v1, 0x450

    const-string v2, "Kid Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x451

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x452

    const-string v2, "RobertJamesRitchie"

    aput-object v2, v0, v1

    const/16 v1, 0x453

    const-string v2, "The Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x454

    const-string v2, "Actor,Athlete"

    aput-object v2, v0, v1

    const/16 v1, 0x455

    const-string v2, "DwayneDouglasJohnson"

    aput-object v2, v0, v1

    const/16 v1, 0x456

    const-string v2, "Ginger Rogers"

    aput-object v2, v0, v1

    const/16 v1, 0x457

    const-string v2, "Actor,Singer,Dancer"

    aput-object v2, v0, v1

    const/16 v1, 0x458

    const-string v2, "VirginiaKatherineMcMath"

    aput-object v2, v0, v1

    const/16 v1, 0x459

    const-string v2, "Mimi Rogers"

    aput-object v2, v0, v1

    const/16 v1, 0x45a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x45b

    const-string v2, "MiriamSpickler"

    aput-object v2, v0, v1

    const/16 v1, 0x45c

    const-string v2, "Will Rogers"

    aput-object v2, v0, v1

    const/16 v1, 0x45d

    const-string v2, "Cowboy,Humorist"

    aput-object v2, v0, v1

    const/16 v1, 0x45e

    const-string v2, "WilliamPennAdair"

    aput-object v2, v0, v1

    const/16 v1, 0x45f

    const-string v2, "L\'il Romeo"

    aput-object v2, v0, v1

    const/16 v1, 0x460

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x461

    const-string v2, "PercyRomeoMillerJunior"

    aput-object v2, v0, v1

    const/16 v1, 0x462

    const-string v2, "Mickey Rooney"

    aput-object v2, v0, v1

    const/16 v1, 0x463

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x464

    const-string v2, "JoeYuleJr."

    aput-object v2, v0, v1

    const/16 v1, 0x465

    const-string v2, "Axl Rose"

    aput-object v2, v0, v1

    const/16 v1, 0x466

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x467

    const-string v2, "WilliamBruceRose"

    aput-object v2, v0, v1

    const/16 v1, 0x468

    const-string v2, "Mickey Rourke"

    aput-object v2, v0, v1

    const/16 v1, 0x469

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x46a

    const-string v2, "PhilipAndreRourkeJr."

    aput-object v2, v0, v1

    const/16 v1, 0x46b

    const-string v2, "JaRule"

    aput-object v2, v0, v1

    const/16 v1, 0x46c

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x46d

    const-string v2, "JefferyAtkins"

    aput-object v2, v0, v1

    const/16 v1, 0x46e

    const-string v2, "Jane Russell"

    aput-object v2, v0, v1

    const/16 v1, 0x46f

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x470

    const-string v2, "ErnestineJaneGeraldineRussell"

    aput-object v2, v0, v1

    const/16 v1, 0x471

    const-string v2, "Theresa Russell"

    aput-object v2, v0, v1

    const/16 v1, 0x472

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x473

    const-string v2, "TheresaPaup"

    aput-object v2, v0, v1

    const/16 v1, 0x474

    const-string v2, "Meg Ryan"

    aput-object v2, v0, v1

    const/16 v1, 0x475

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x476

    const-string v2, "MargaretMaryEmilyAnneHyra"

    aput-object v2, v0, v1

    const/16 v1, 0x477

    const-string v2, "Winona Ryder"

    aput-object v2, v0, v1

    const/16 v1, 0x478

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x479

    const-string v2, "WinonaLauraHorowitz"

    aput-object v2, v0, v1

    const/16 v1, 0x47a

    const-string v2, "Sade"

    aput-object v2, v0, v1

    const/16 v1, 0x47b

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x47c

    const-string v2, "HelenFolasadeAdu"

    aput-object v2, v0, v1

    const/16 v1, 0x47d

    const-string v2, "Seal"

    aput-object v2, v0, v1

    const/16 v1, 0x47e

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x47f

    const-string v2, "HenryOlusegunOlumideSamuel"

    aput-object v2, v0, v1

    const/16 v1, 0x480

    const-string v2, "Siegfried"

    aput-object v2, v0, v1

    const/16 v1, 0x481

    const-string v2, "WhiteTigerTamer"

    aput-object v2, v0, v1

    const/16 v1, 0x482

    const-string v2, "SiegfriedFischbacher"

    aput-object v2, v0, v1

    const/16 v1, 0x483

    const-string v2, "Sinbad"

    aput-object v2, v0, v1

    const/16 v1, 0x484

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x485

    const-string v2, "DavidAtkins"

    aput-object v2, v0, v1

    const/16 v1, 0x486

    const-string v2, "Sisqo(DruHill)"

    aput-object v2, v0, v1

    const/16 v1, 0x487

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x488

    const-string v2, "MarkDurellAndrews"

    aput-object v2, v0, v1

    const/16 v1, 0x489

    const-string v2, "Sting"

    aput-object v2, v0, v1

    const/16 v1, 0x48a

    const-string v2, "Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x48b

    const-string v2, "GordonMatthewSumner"

    aput-object v2, v0, v1

    const/16 v1, 0x48c

    const-string v2, "George Sand"

    aput-object v2, v0, v1

    const/16 v1, 0x48d

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x48e

    const-string v2, "Amandine-Aurore-LucileDudevant"

    aput-object v2, v0, v1

    const/16 v1, 0x48f

    const-string v2, "Mia Sara"

    aput-object v2, v0, v1

    const/16 v1, 0x490

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x491

    const-string v2, "MiraSarapocciello"

    aput-object v2, v0, v1

    const/16 v1, 0x492

    const-string v2, "Susan Sarandon"

    aput-object v2, v0, v1

    const/16 v1, 0x493

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x494

    const-string v2, "SusanTomaling"

    aput-object v2, v0, v1

    const/16 v1, 0x495

    const-string v2, "Dick Sargent"

    aput-object v2, v0, v1

    const/16 v1, 0x496

    const-string v2, "Actor2ndDarrinonTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x497

    const-string v2, "RichardCox"

    aput-object v2, v0, v1

    const/16 v1, 0x498

    const-string v2, "Telly Savalas"

    aput-object v2, v0, v1

    const/16 v1, 0x499

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x49a

    const-string v2, "AristotleSavalas"

    aput-object v2, v0, v1

    const/16 v1, 0x49b

    const-string v2, "Diane Sawyer"

    aput-object v2, v0, v1

    const/16 v1, 0x49c

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x49d

    const-string v2, "LilaDianaSawyer"

    aput-object v2, v0, v1

    const/16 v1, 0x49e

    const-string v2, "Boz Scaggs"

    aput-object v2, v0, v1

    const/16 v1, 0x49f

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x4a0

    const-string v2, "WilliamRoyceScaggs"

    aput-object v2, v0, v1

    const/16 v1, 0x4a1

    const-string v2, "Rod Serling"

    aput-object v2, v0, v1

    const/16 v1, 0x4a2

    const-string v2, "DirectorCreatorofTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x4a3

    const-string v2, "EdwinRodmanSerling"

    aput-object v2, v0, v1

    const/16 v1, 0x4a4

    const-string v2, "Dr.Seuss"

    aput-object v2, v0, v1

    const/16 v1, 0x4a5

    const-string v2, "Author"

    aput-object v2, v0, v1

    const/16 v1, 0x4a6

    const-string v2, "TheodoreSeussGeisel"

    aput-object v2, v0, v1

    const/16 v1, 0x4a7

    const-string v2, "JaneS eymour"

    aput-object v2, v0, v1

    const/16 v1, 0x4a8

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4a9

    const-string v2, "JoycePenelopeWilhelminaFrankenberg"

    aput-object v2, v0, v1

    const/16 v1, 0x4aa

    const-string v2, "Tupac Shakur"

    aput-object v2, v0, v1

    const/16 v1, 0x4ab

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x4ac

    const-string v2, "LesaneParishCrooks"

    aput-object v2, v0, v1

    const/16 v1, 0x4ad

    const-string v2, "Omar Sharif"

    aput-object v2, v0, v1

    const/16 v1, 0x4ae

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4af

    const-string v2, "MichaelShalhoub"

    aput-object v2, v0, v1

    const/16 v1, 0x4b0

    const-string v2, "Artie Shaw"

    aput-object v2, v0, v1

    const/16 v1, 0x4b1

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x4b2

    const-string v2, "AbrahamIsaacArshawasky"

    aput-object v2, v0, v1

    const/16 v1, 0x4b3

    const-string v2, "Charlie Sheen"

    aput-object v2, v0, v1

    const/16 v1, 0x4b4

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4b5

    const-string v2, "CarlosIrwinEstevez"

    aput-object v2, v0, v1

    const/16 v1, 0x4b6

    const-string v2, "Martin Sheen"

    aput-object v2, v0, v1

    const/16 v1, 0x4b7

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4b8

    const-string v2, "RamonEstevez"

    aput-object v2, v0, v1

    const/16 v1, 0x4b9

    const-string v2, "Brooke Shields"

    aput-object v2, v0, v1

    const/16 v1, 0x4ba

    const-string v2, "Actor,Model"

    aput-object v2, v0, v1

    const/16 v1, 0x4bb

    const-string v2, "ChristaBrookeCamilleShields"

    aput-object v2, v0, v1

    const/16 v1, 0x4bc

    const-string v2, "Talia Shire"

    aput-object v2, v0, v1

    const/16 v1, 0x4bd

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4be

    const-string v2, "TaliaCoppola"

    aput-object v2, v0, v1

    const/16 v1, 0x4bf

    const-string v2, "M.Night Shyamalan"

    aput-object v2, v0, v1

    const/16 v1, 0x4c0

    const-string v2, "Director,Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x4c1

    const-string v2, "ManojNelliyattuShyamalan"

    aput-object v2, v0, v1

    const/16 v1, 0x4c2

    const-string v2, "Gene Simmons"

    aput-object v2, v0, v1

    const/16 v1, 0x4c3

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x4c4

    const-string v2, "ChaimWitz"

    aput-object v2, v0, v1

    const/16 v1, 0x4c5

    const-string v2, "Nina Simone"

    aput-object v2, v0, v1

    const/16 v1, 0x4c6

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x4c7

    const-string v2, "EuniceWaymon"

    aput-object v2, v0, v1

    const/16 v1, 0x4c8

    const-string v2, "Siouxsie Sioux"

    aput-object v2, v0, v1

    const/16 v1, 0x4c9

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x4ca

    const-string v2, "SusanDallion"

    aput-object v2, v0, v1

    const/16 v1, 0x4cb

    const-string v2, "Nikki Sixx"

    aput-object v2, v0, v1

    const/16 v1, 0x4cc

    const-string v2, "MusicianfromthebandMotleyCrue"

    aput-object v2, v0, v1

    const/16 v1, 0x4cd

    const-string v2, "FrankFarrano"

    aput-object v2, v0, v1

    const/16 v1, 0x4ce

    const-string v2, "Ione Skye"

    aput-object v2, v0, v1

    const/16 v1, 0x4cf

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4d0

    const-string v2, "IoneSkyeLeitch"

    aput-object v2, v0, v1

    const/16 v1, 0x4d1

    const-string v2, "Grace Slick"

    aput-object v2, v0, v1

    const/16 v1, 0x4d2

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x4d3

    const-string v2, "GraceBarnettWing"

    aput-object v2, v0, v1

    const/16 v1, 0x4d4

    const-string v2, "AnnaNicoleSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x4d5

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x4d6

    const-string v2, "VickieLynnHogan"

    aput-object v2, v0, v1

    const/16 v1, 0x4d7

    const-string v2, "KeelySmith"

    aput-object v2, v0, v1

    const/16 v1, 0x4d8

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x4d9

    const-string v2, "DorothyJaquelineKeely"

    aput-object v2, v0, v1

    const/16 v1, 0x4da

    const-string v2, "YeardleySmith"

    aput-object v2, v0, v1

    const/16 v1, 0x4db

    const-string v2, "ActorVoiceof"

    aput-object v2, v0, v1

    const/16 v1, 0x4dc

    const-string v2, "MarthaMariaYeardleySmith"

    aput-object v2, v0, v1

    const/16 v1, 0x4dd

    const-string v2, "LeeLeeSobieski"

    aput-object v2, v0, v1

    const/16 v1, 0x4de

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4df

    const-string v2, "LilianeRudabetGloriaElsvetaSobieski"

    aput-object v2, v0, v1

    const/16 v1, 0x4e0

    const-string v2, "KevinSpacey"

    aput-object v2, v0, v1

    const/16 v1, 0x4e1

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4e2

    const-string v2, "KevinSpaceyFowler"

    aput-object v2, v0, v1

    const/16 v1, 0x4e3

    const-string v2, "RickSpringfield"

    aput-object v2, v0, v1

    const/16 v1, 0x4e4

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x4e5

    const-string v2, "RichardSpringthorpe"

    aput-object v2, v0, v1

    const/16 v1, 0x4e6

    const-string v2, "YvesSt.Laurent"

    aput-object v2, v0, v1

    const/16 v1, 0x4e7

    const-string v2, "Designer"

    aput-object v2, v0, v1

    const/16 v1, 0x4e8

    const-string v2, "HenriDonatMathieu"

    aput-object v2, v0, v1

    const/16 v1, 0x4e9

    const-string v2, "SylvesterStallone"

    aput-object v2, v0, v1

    const/16 v1, 0x4ea

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4eb

    const-string v2, "MichaelSylvesterEnzioStallone"

    aput-object v2, v0, v1

    const/16 v1, 0x4ec

    const-string v2, "RingoStarr"

    aput-object v2, v0, v1

    const/16 v1, 0x4ed

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x4ee

    const-string v2, "RichardStarkey"

    aput-object v2, v0, v1

    const/16 v1, 0x4ef

    const-string v2, "CatStevens"

    aput-object v2, v0, v1

    const/16 v1, 0x4f0

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x4f1

    const-string v2, "SteveGeorgiou"

    aput-object v2, v0, v1

    const/16 v1, 0x4f2

    const-string v2, "FisherStevens"

    aput-object v2, v0, v1

    const/16 v1, 0x4f3

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4f4

    const-string v2, "StevenFisher"

    aput-object v2, v0, v1

    const/16 v1, 0x4f5

    const-string v2, "FrenchStewart"

    aput-object v2, v0, v1

    const/16 v1, 0x4f6

    const-string v2, "ActorComedian"

    aput-object v2, v0, v1

    const/16 v1, 0x4f7

    const-string v2, "MiltonFrenchStewart"

    aput-object v2, v0, v1

    const/16 v1, 0x4f8

    const-string v2, "JonStewart"

    aput-object v2, v0, v1

    const/16 v1, 0x4f9

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x4fa

    const-string v2, "JonathanStuartLeibowitz"

    aput-object v2, v0, v1

    const/16 v1, 0x4fb

    const-string v2, "MerylStreep"

    aput-object v2, v0, v1

    const/16 v1, 0x4fc

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x4fd

    const-string v2, "MaryLouiseStreep"

    aput-object v2, v0, v1

    const/16 v1, 0x4fe

    const-string v2, "BarbraStreisand"

    aput-object v2, v0, v1

    const/16 v1, 0x4ff

    const-string v2, "Actor,Singer,Director"

    aput-object v2, v0, v1

    const/16 v1, 0x500

    const-string v2, "BarbaraJeanStreisand"

    aput-object v2, v0, v1

    const/16 v1, 0x501

    const-string v2, "DonnaSummer"

    aput-object v2, v0, v1

    const/16 v1, 0x502

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x503

    const-string v2, "LaDonnaAdrianGaines"

    aput-object v2, v0, v1

    const/16 v1, 0x504

    const-string v2, "Kiefer Sutherland"

    aput-object v2, v0, v1

    const/16 v1, 0x505

    const-string v2, "ActorfromTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x506

    const-string v2, "WilliamFrederickDempseyGeorgeSutherland"

    aput-object v2, v0, v1

    const/16 v1, 0x507

    const-string v2, "Raven Symone"

    aput-object v2, v0, v1

    const/16 v1, 0x508

    const-string v2, "ActressSinger"

    aput-object v2, v0, v1

    const/16 v1, 0x509

    const-string v2, "Raven-SymoneChristinaPearman"

    aput-object v2, v0, v1

    const/16 v1, 0x50a

    const-string v2, "Tiffany"

    aput-object v2, v0, v1

    const/16 v1, 0x50b

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x50c

    const-string v2, "TiffanieReneeDarwish"

    aput-object v2, v0, v1

    const/16 v1, 0x50d

    const-string v2, "Twiggy"

    aput-object v2, v0, v1

    const/16 v1, 0x50e

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x50f

    const-string v2, "LeslieHornby"

    aput-object v2, v0, v1

    const/16 v1, 0x510

    const-string v2, "Mr.T"

    aput-object v2, v0, v1

    const/16 v1, 0x511

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x512

    const-string v2, "LawrenceTureaud"

    aput-object v2, v0, v1

    const/16 v1, 0x513

    const-string v2, "Alan Thicke"

    aput-object v2, v0, v1

    const/16 v1, 0x514

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x515

    const-string v2, "AlanWillisJeffrey"

    aput-object v2, v0, v1

    const/16 v1, 0x516

    const-string v2, "Danny Thomas"

    aput-object v2, v0, v1

    const/16 v1, 0x517

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x518

    const-string v2, "MuzyadYakhoob"

    aput-object v2, v0, v1

    const/16 v1, 0x519

    const-string v2, "Jennifer Tilly"

    aput-object v2, v0, v1

    const/16 v1, 0x51a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x51b

    const-string v2, "JenniferChan"

    aput-object v2, v0, v1

    const/16 v1, 0x51c

    const-string v2, "Tiny Tim"

    aput-object v2, v0, v1

    const/16 v1, 0x51d

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x51e

    const-string v2, "HerbertBuckinghamKhaury"

    aput-object v2, v0, v1

    const/16 v1, 0x51f

    const-string v2, "Lily Tomlin"

    aput-object v2, v0, v1

    const/16 v1, 0x520

    const-string v2, "ActressComedian"

    aput-object v2, v0, v1

    const/16 v1, 0x521

    const-string v2, "MaryJeanTomlin"

    aput-object v2, v0, v1

    const/16 v1, 0x522

    const-string v2, "Rip Torn"

    aput-object v2, v0, v1

    const/16 v1, 0x523

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x524

    const-string v2, "ElmoreRualTornJr."

    aput-object v2, v0, v1

    const/16 v1, 0x525

    const-string v2, "Randy Travis"

    aput-object v2, v0, v1

    const/16 v1, 0x526

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x527

    const-string v2, "RandyTraywick"

    aput-object v2, v0, v1

    const/16 v1, 0x528

    const-string v2, "Tina Turner"

    aput-object v2, v0, v1

    const/16 v1, 0x529

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x52a

    const-string v2, "AnnaMaeBullock"

    aput-object v2, v0, v1

    const/16 v1, 0x52b

    const-string v2, "Shania Twain"

    aput-object v2, v0, v1

    const/16 v1, 0x52c

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x52d

    const-string v2, "EileenReginaEdwards"

    aput-object v2, v0, v1

    const/16 v1, 0x52e

    const-string v2, "Steven Tyler"

    aput-object v2, v0, v1

    const/16 v1, 0x52f

    const-string v2, "Singer,SongwriterLeadsingerofAerosmith"

    aput-object v2, v0, v1

    const/16 v1, 0x530

    const-string v2, "StevenTallarico"

    aput-object v2, v0, v1

    const/16 v1, 0x531

    const-string v2, "Hunter Tylo"

    aput-object v2, v0, v1

    const/16 v1, 0x532

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x533

    const-string v2, "DeborahHunterMorehart"

    aput-object v2, v0, v1

    const/16 v1, 0x534

    const-string v2, "Usher"

    aput-object v2, v0, v1

    const/16 v1, 0x535

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x536

    const-string v2, "UsherRaymondIV"

    aput-object v2, v0, v1

    const/16 v1, 0x537

    const-string v2, "Vangelis"

    aput-object v2, v0, v1

    const/16 v1, 0x538

    const-string v2, "Composer"

    aput-object v2, v0, v1

    const/16 v1, 0x539

    const-string v2, "EvangelosOdesseyPapathanassiou"

    aput-object v2, v0, v1

    const/16 v1, 0x53a

    const-string v2, "Vanity"

    aput-object v2, v0, v1

    const/16 v1, 0x53b

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x53c

    const-string v2, "DeniseKatrinaSmith"

    aput-object v2, v0, v1

    const/16 v1, 0x53d

    const-string v2, "Abigail VanBuren"

    aput-object v2, v0, v1

    const/16 v1, 0x53e

    const-string v2, "AuthorAdviceColumnist"

    aput-object v2, v0, v1

    const/16 v1, 0x53f

    const-string v2, "PaulineEsterFriedman"

    aput-object v2, v0, v1

    const/16 v1, 0x540

    const-string v2, "Vivian Vance"

    aput-object v2, v0, v1

    const/16 v1, 0x541

    const-string v2, "Actress"

    aput-object v7, v0, v1

    const/16 v1, 0x542

    const-string v2, "VivianRobertaJones"

    aput-object v2, v0, v1

    const/16 v1, 0x543

    const-string v2, "Sid Vicious"

    aput-object v2, v0, v1

    const/16 v1, 0x544

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x545

    const-string v2, "JohnSimonRitchie"

    aput-object v2, v0, v1

    const/16 v1, 0x546

    const-string v2, "Bobby Vinton"

    aput-object v2, v0, v1

    const/16 v1, 0x547

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x548

    const-string v2, "StanleyRobertVintula,Jr."

    aput-object v2, v0, v1

    const/16 v1, 0x549

    const-string v2, "Kat VonD"

    aput-object v2, v0, v1

    const/16 v1, 0x54a

    const-string v2, "TattooArtist,TVpersonality"

    aput-object v2, v0, v1

    const/16 v1, 0x54b

    const-string v2, "KatherineVonDrachenberg"

    aput-object v2, v0, v1

    const/16 v1, 0x54c

    const-string v2, "Bono Vox"

    aput-object v2, v0, v1

    const/16 v1, 0x54d

    const-string v2, "Singer,Songwriter,Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x54e

    const-string v2, "PaulDavidHewson"

    aput-object v2, v0, v1

    const/16 v1, 0x54f

    const-string v2, "Lindsay Wagner"

    aput-object v2, v0, v1

    const/16 v1, 0x550

    const-string v2, "ActorTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x551

    const-string v2, "LindsayJeanBall"

    aput-object v2, v0, v1

    const/16 v1, 0x552

    const-string v2, "Christopher Walken"

    aput-object v2, v0, v1

    const/16 v1, 0x553

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x554

    const-string v2, "RonaldWalken"

    aput-object v2, v0, v1

    const/16 v1, 0x555

    const-string v2, "Burt Ward"

    aput-object v2, v0, v1

    const/16 v1, 0x556

    const-string v2, "ActorTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x557

    const-string v2, "BurtonGervis"

    aput-object v2, v0, v1

    const/16 v1, 0x558

    const-string v2, "Dinah Washington"

    aput-object v2, v0, v1

    const/16 v1, 0x559

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x55a

    const-string v2, "RuthLeeJones"

    aput-object v2, v0, v1

    const/16 v1, 0x55b

    const-string v2, "Muddy Waters"

    aput-object v2, v0, v1

    const/16 v1, 0x55c

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x55d

    const-string v2, "McKinleyMorganfield"

    aput-object v2, v0, v1

    const/16 v1, 0x55e

    const-string v2, "John Wayne"

    aput-object v2, v0, v1

    const/16 v1, 0x55f

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x560

    const-string v2, "MarionMichaelMorrison"

    aput-object v2, v0, v1

    const/16 v1, 0x561

    const-string v2, "Sigourney Weaver"

    aput-object v2, v0, v1

    const/16 v1, 0x562

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x563

    const-string v2, "SusanAlexandraWeaver"

    aput-object v2, v0, v1

    const/16 v1, 0x564

    const-string v2, "Raquel Welch"

    aput-object v2, v0, v1

    const/16 v1, 0x565

    const-string v2, "Actor,Model"

    aput-object v2, v0, v1

    const/16 v1, 0x566

    const-string v2, "JoRaquelTejada"

    aput-object v2, v0, v1

    const/16 v1, 0x567

    const-string v2, "Tuesday Weld"

    aput-object v2, v0, v1

    const/16 v1, 0x568

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x569

    const-string v2, "SusanKerrWells"

    aput-object v2, v0, v1

    const/16 v1, 0x56a

    const-string v2, "Adam West"

    aput-object v2, v0, v1

    const/16 v1, 0x56b

    const-string v2, "Actor-TV\'sBatman"

    aput-object v2, v0, v1

    const/16 v1, 0x56c

    const-string v2, "WilliamWestAnderson"

    aput-object v2, v0, v1

    const/16 v1, 0x56d

    const-string v2, "Mae West"

    aput-object v2, v0, v1

    const/16 v1, 0x56e

    const-string v2, "Actor,Comedian"

    aput-object v2, v0, v1

    const/16 v1, 0x56f

    const-string v2, "MaryJaneWest"

    aput-object v2, v0, v1

    const/16 v1, 0x570

    const-string v2, "Dr.Ruth Westheimer"

    aput-object v2, v0, v1

    const/16 v1, 0x571

    const-string v2, "SexAdviceDoctor"

    aput-object v2, v0, v1

    const/16 v1, 0x572

    const-string v2, "KarolaRuthSiegel"

    aput-object v2, v0, v1

    const/16 v1, 0x573

    const-string v2, "Barry White"

    aput-object v2, v0, v1

    const/16 v1, 0x574

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x575

    const-string v2, "BarryEugeneCarter"

    aput-object v2, v0, v1

    const/16 v1, 0x576

    const-string v2, "Vanna White"

    aput-object v2, v0, v1

    const/16 v1, 0x577

    const-string v2, "TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x578

    const-string v2, "VannaMarieRosich"

    aput-object v2, v0, v1

    const/16 v1, 0x579

    const-string v2, "Gene Wilder"

    aput-object v2, v0, v1

    const/16 v1, 0x57a

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x57b

    const-string v2, "JeromeSilberman"

    aput-object v2, v0, v1

    const/16 v1, 0x57c

    const-string v2, "Anson Williams"

    aput-object v2, v0, v1

    const/16 v1, 0x57d

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x57e

    const-string v2, "AnsonWilliamHeimlick"

    aput-object v2, v0, v1

    const/16 v1, 0x57f

    const-string v2, "Barry Williams"

    aput-object v2, v0, v1

    const/16 v1, 0x580

    const-string v2, "ActorTV\'s"

    aput-object v2, v0, v1

    const/16 v1, 0x581

    const-string v2, "BarryWilliamBlenkhorn"

    aput-object v2, v0, v1

    const/16 v1, 0x582

    const-string v2, "Bruce Willis"

    aput-object v2, v0, v1

    const/16 v1, 0x583

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x584

    const-string v2, "WalterBruceWillison"

    aput-object v2, v0, v1

    const/16 v1, 0x585

    const-string v2, "Reese Witherspoon"

    aput-object v2, v0, v1

    const/16 v1, 0x586

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x587

    const-string v2, "LauraJeanReeseWitherspoon"

    aput-object v2, v0, v1

    const/16 v1, 0x588

    const-string v2, "Stevie Wonder"

    aput-object v2, v0, v1

    const/16 v1, 0x589

    const-string v2, "Singer,Songwriter"

    aput-object v5, v0, v1

    const/16 v1, 0x58a

    const-string v2, "StevelandHardawayJudkins"

    aput-object v2, v0, v1

    const/16 v1, 0x58b

    const-string v2, "Tiger Woods"

    aput-object v2, v0, v1

    const/16 v1, 0x58c

    const-string v2, "Athlete"

    aput-object v2, v0, v1

    const/16 v1, 0x58d

    const-string v2, "EldrickWoods"

    aput-object v2, v0, v1

    const/16 v1, 0x58e

    const-string v2, "Tammy Wynette"

    aput-object v2, v0, v1

    const/16 v1, 0x58f

    const-string v2, "Singer"

    aput-object v4, v0, v1

    const/16 v1, 0x590

    const-string v2, "VirginiaPugh"

    aput-object v2, v0, v1

    const/16 v1, 0x591

    const-string v2, "Xuxa"

    aput-object v2, v0, v1

    const/16 v1, 0x592

    const-string v2, "Singer,TVHost"

    aput-object v2, v0, v1

    const/16 v1, 0x593

    const-string v2, "MariaMeneghel"

    aput-object v2, v0, v1

    const/16 v1, 0x594

    const-string v2, "Malcolm X"

    aput-object v2, v0, v1

    const/16 v1, 0x595

    const-string v2, "CivilRightsLeader"

    aput-object v2, v0, v1

    const/16 v1, 0x596

    const-string v2, "MalcolmLittle"

    aput-object v2, v0, v1

    const/16 v1, 0x597

    const-string v2, "Xzibit"

    aput-object v2, v0, v1

    const/16 v1, 0x598

    const-string v2, "Rapper"

    aput-object v2, v0, v1

    const/16 v1, 0x599

    const-string v2, "AlvinJoyner"

    aput-object v2, v0, v1

    const/16 v1, 0x59a

    const-string v2, "Yanni"

    aput-object v2, v0, v1

    const/16 v1, 0x59b

    const-string v2, "Musician"

    aput-object v2, v0, v1

    const/16 v1, 0x59c

    const-string v2, "JohnYanniChristopher"

    aput-object v2, v0, v1

    const/16 v1, 0x59d

    const-string v2, "Michelle Yeoh"

    aput-object v2, v0, v1

    const/16 v1, 0x59e

    const-string v2, "Actor"

    aput-object v3, v0, v1

    const/16 v1, 0x59f

    const-string v2, "YeohChoo-Kheng"

    aput-object v2, v0, v1

    const/16 v1, 0x5a0

    const-string v2, "Pia Zadora"

    aput-object v2, v0, v1

    const/16 v1, 0x5a1

    const-string v2, "Actor,Singer"

    aput-object v6, v0, v1

    const/16 v1, 0x5a2

    const-string v2, "PiaSchipani"

    aput-object v2, v0, v1

    const/16 v1, 0x5a3

    const-string v2, "Franco Zeffirelli"

    aput-object v2, v0, v1

    const/16 v1, 0x5a4

    const-string v2, "Filmmaker"

    aput-object v2, v0, v1

    const/16 v1, 0x5a5

    const-string v2, "GianfrancoCorsi"

    aput-object v2, v0, v1

    const/16 v1, 0x5a6

    const-string v2, "Rob Zombie"

    aput-object v2, v0, v1

    const/16 v1, 0x5a7

    const-string v2, "SingerMusician"

    aput-object v2, v0, v1

    const/16 v1, 0x5a8

    const-string v2, "RobertCummings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mPeople:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mExcludingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->doSaveContacs()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->doSaveGroups(I)V

    return-void
.end method

.method private creatActionDialogHandler()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 463
    :goto_4
    return-void

    .line 384
    :cond_5
    new-instance v0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$2;-><init>(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    goto :goto_4
.end method

.method private doClickAction(I)V
    .registers 6
    .parameter "id"

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 82
    packed-switch p1, :pswitch_data_56

    .line 131
    :goto_8
    return-void

    .line 84
    :pswitch_9
    invoke-direct {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->doQuery()V

    goto :goto_8

    .line 88
    :pswitch_d
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 89
    iput v2, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 90
    invoke-direct {p0, v1, v3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 94
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 95
    iput v2, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 96
    const/16 v0, 0x64

    invoke-direct {p0, v1, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 100
    :pswitch_21
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 101
    iput v2, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 102
    const/16 v0, 0xc8

    invoke-direct {p0, v1, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 106
    :pswitch_2c
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 107
    iput v2, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 108
    const/16 v0, 0x12c

    invoke-direct {p0, v1, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 112
    :pswitch_37
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 113
    iput v2, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 114
    const/16 v0, 0x1f4

    invoke-direct {p0, v1, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 118
    :pswitch_42
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 119
    iput v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 120
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 124
    :pswitch_4c
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->showDialog(I)V

    .line 125
    iput v1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mflag:I

    .line 126
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->sendMessageToHandler(II)V

    goto :goto_8

    .line 82
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_16
        :pswitch_21
        :pswitch_2c
        :pswitch_37
        :pswitch_42
        :pswitch_4c
    .end packed-switch
.end method

.method private doQuery()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, phonesCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Stuffs;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$SnsIds;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    const-string v0, "End query test"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method

.method private doSaveContacs()V
    .registers 27

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 170
    .local v18, resolver:Landroid/content/ContentResolver;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v22, values:Landroid/content/ContentValues;
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    .line 178
    .local v20, rn:Ljava/util/Random;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v11, makename:Ljava/lang/StringBuilder;
    const/16 v23, 0x2ba2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    const v24, 0xac00

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-char v0, v0

    move v4, v0

    .line 180
    .local v4, a1:C
    const/16 v23, 0x2ba2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    const v24, 0xac00

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-char v0, v0

    move v5, v0

    .line 181
    .local v5, a2:C
    const/16 v23, 0x2ba2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    const v24, 0xac00

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-char v0, v0

    move v6, v0

    .line 182
    .local v6, a3:C
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, name:Ljava/lang/String;
    const/16 v23, 0x1e0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    mul-int/lit8 v10, v23, 0x3

    .line 188
    .local v10, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mPeople:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, 0x1

    aget-object v17, v23, v24

    .line 189
    .local v17, position:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mPeople:[Ljava/lang/String;

    move-object/from16 v23, v0

    add-int/lit8 v24, v10, 0x2

    aget-object v13, v23, v24

    .line 192
    .local v13, note:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 193
    const-string v23, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v23, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 196
    .local v15, personUri:Landroid/net/Uri;
    if-nez v15, :cond_b0

    .line 197
    const-string v23, "ContactsTest"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "invalid uri:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_af
    return-void

    .line 204
    :cond_b0
    const/16 v23, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 205
    .local v9, i:I
    packed-switch v9, :pswitch_data_208

    .line 225
    const v19, 0x7f020031

    .line 229
    .local v19, resource:I
    :goto_c0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 231
    .local v16, photo:Landroid/graphics/Bitmap;
    if-eqz v16, :cond_f2

    .line 232
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v21, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x4b

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v23

    move-object v1, v15

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 238
    .end local v21           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_f2
    const/4 v9, 0x0

    :goto_f3
    const/16 v23, 0x3

    move v0, v9

    move/from16 v1, v23

    if-ge v0, v1, :cond_164

    .line 239
    const v23, 0x7fffffff

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 240
    .local v14, number:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 241
    const-string v23, "type"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v23, "isprimary"

    if-nez v9, :cond_161

    const/16 v24, 0x1

    :goto_11d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v23, "number"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v23, "phones"

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 238
    add-int/lit8 v9, v9, 0x1

    goto :goto_f3

    .line 207
    .end local v14           #number:Ljava/lang/String;
    .end local v16           #photo:Landroid/graphics/Bitmap;
    .end local v19           #resource:I
    :pswitch_143
    const v19, 0x7f02002b

    .line 208
    .restart local v19       #resource:I
    goto/16 :goto_c0

    .line 210
    .end local v19           #resource:I
    :pswitch_148
    const v19, 0x7f02002c

    .line 211
    .restart local v19       #resource:I
    goto/16 :goto_c0

    .line 213
    .end local v19           #resource:I
    :pswitch_14d
    const v19, 0x7f02002d

    .line 214
    .restart local v19       #resource:I
    goto/16 :goto_c0

    .line 216
    .end local v19           #resource:I
    :pswitch_152
    const v19, 0x7f02002e

    .line 217
    .restart local v19       #resource:I
    goto/16 :goto_c0

    .line 219
    .end local v19           #resource:I
    :pswitch_157
    const v19, 0x7f02002f

    .line 220
    .restart local v19       #resource:I
    goto/16 :goto_c0

    .line 222
    .end local v19           #resource:I
    :pswitch_15c
    const v19, 0x7f020030

    .line 223
    .restart local v19       #resource:I
    goto/16 :goto_c0

    .line 242
    .restart local v14       #number:Ljava/lang/String;
    .restart local v16       #photo:Landroid/graphics/Bitmap;
    :cond_161
    const/16 v24, 0x0

    goto :goto_11d

    .line 248
    .end local v14           #number:Ljava/lang/String;
    :cond_164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v8, email:Ljava/lang/StringBuilder;
    const/16 v23, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 250
    const/4 v9, 0x0

    :goto_174
    if-ge v9, v10, :cond_188

    .line 251
    const/16 v23, 0x5d

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    add-int/lit8 v7, v23, 0x21

    .line 252
    .local v7, c:I
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto :goto_174

    .line 254
    .end local v7           #c:I
    :cond_188
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 255
    const-string v23, "kind"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v23, "type"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v23, "isprimary"

    if-nez v9, :cond_202

    const/16 v24, 0x1

    :goto_1a7
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v23, "data"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v23, "contact_methods"

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 272
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 273
    const-string v23, "kind"

    const/16 v24, 0x7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v23, "isprimary"

    if-nez v9, :cond_205

    const/16 v24, 0x1

    :goto_1dd
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v23, "data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v23, "stuffs"

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_af

    .line 257
    :cond_202
    const/16 v24, 0x0

    goto :goto_1a7

    .line 274
    :cond_205
    const/16 v24, 0x0

    goto :goto_1dd

    .line 205
    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_143
        :pswitch_148
        :pswitch_14d
        :pswitch_152
        :pswitch_157
        :pswitch_15c
    .end packed-switch
.end method

.method private doSaveGroups(I)V
    .registers 16
    .parameter "systemId"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 282
    .local v6, resolver:Landroid/content/ContentResolver;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v10, values:Landroid/content/ContentValues;
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 290
    .local v8, rn:Ljava/util/Random;
    const/16 v11, 0x50

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    mul-int/lit8 v2, v11, 0x2

    .line 291
    .local v2, index:I
    iget-object v11, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mGroup:[Ljava/lang/String;

    aget-object v3, v11, v2

    .line 292
    .local v3, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mGroup:[Ljava/lang/String;

    add-int/lit8 v12, v2, 0x1

    aget-object v4, v11, v12

    .line 295
    .local v4, note:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 296
    const-string v11, "name"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v11, "notes"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v11, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 305
    .local v0, groupUri:Landroid/net/Uri;
    if-nez v0, :cond_4e

    .line 306
    const-string v11, "ContactsTest"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid uri:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_4d
    :goto_4d
    return-void

    .line 313
    :cond_4e
    const/4 v11, 0x6

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 314
    .local v1, i:I
    packed-switch v1, :pswitch_data_94

    .line 334
    const v7, 0x7f020031

    .line 338
    .local v7, resource:I
    :goto_59
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 340
    .local v5, photo:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4d

    .line 341
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x4b

    invoke-virtual {v5, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 343
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v11, v0, v12}, Landroid/provider/Contacts$Groups;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    goto :goto_4d

    .line 316
    .end local v5           #photo:Landroid/graphics/Bitmap;
    .end local v7           #resource:I
    .end local v9           #stream:Ljava/io/ByteArrayOutputStream;
    :pswitch_7b
    const v7, 0x7f02002b

    .line 317
    .restart local v7       #resource:I
    goto :goto_59

    .line 319
    .end local v7           #resource:I
    :pswitch_7f
    const v7, 0x7f02002c

    .line 320
    .restart local v7       #resource:I
    goto :goto_59

    .line 322
    .end local v7           #resource:I
    :pswitch_83
    const v7, 0x7f02002d

    .line 323
    .restart local v7       #resource:I
    goto :goto_59

    .line 325
    .end local v7           #resource:I
    :pswitch_87
    const v7, 0x7f02002e

    .line 326
    .restart local v7       #resource:I
    goto :goto_59

    .line 328
    .end local v7           #resource:I
    :pswitch_8b
    const v7, 0x7f02002f

    .line 329
    .restart local v7       #resource:I
    goto :goto_59

    .line 331
    .end local v7           #resource:I
    :pswitch_8f
    const v7, 0x7f020030

    .line 332
    .restart local v7       #resource:I
    goto :goto_59

    .line 314
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_7f
        :pswitch_83
        :pswitch_87
        :pswitch_8b
        :pswitch_8f
    .end packed-switch
.end method

.method private sendMessageToHandler(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    return-void
.end method

.method private sendMessageToHandler(II)V
    .registers 5
    .parameter "msgId"
    .parameter "arg2"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 476
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 477
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 478
    iget-object v1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    return-void
.end method

.method private sendMessageToHandler(III)V
    .registers 6
    .parameter "msgId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 467
    iget-object v1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 468
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 469
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 470
    iget-object v1, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f06004e

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-direct {p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->creatActionDialogHandler()V

    .line 73
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 351
    packed-switch p1, :pswitch_data_3c

    move-object v3, v4

    .line 376
    :goto_5
    return-object v3

    .line 353
    :pswitch_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 354
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, dialogLayout:Landroid/view/View;
    const v3, 0x7f07001a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 356
    .local v2, title:Landroid/widget/TextView;
    const-string v3, "Please wait"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cancel"

    new-instance v5, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest$1;-><init>(Lcom/lge/hiddenmenu/contacts_test/ContactsTest;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mExcludingDialog:Landroid/app/AlertDialog;

    .line 373
    iget-object v3, p0, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->mExcludingDialog:Landroid/app/AlertDialog;

    goto :goto_5

    .line 351
    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/contacts_test/ContactsTest;->doClickAction(I)V

    .line 78
    return-void
.end method
