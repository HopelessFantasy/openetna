.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# static fields
.field public static final GSM_BYT:I = 0x12c

.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmGreek:Landroid/util/SparseIntArray;

.field private static final charToGsmLatinO:Landroid/util/SparseIntArray;

.field private static final charToGsmLatinTHR:Landroid/util/SparseIntArray;

.field private static final charToGsmLatinTW:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static operator:Ljava/lang/String;

.field private static sGsmSpaceChar:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/16 v11, 0x6f

    const/16 v10, 0x55

    const/16 v9, 0x4f

    const/16 v8, 0x41

    const/16 v7, 0x49

    .line 872
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 873
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 874
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 875
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 879
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    .line 880
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    .line 881
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    .line 882
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    .line 887
    const/4 v0, 0x0

    .line 889
    .local v0, i:I
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 891
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 892
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 894
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 896
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 899
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 900
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 911
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 912
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 913
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 914
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 917
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 918
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 930
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x28

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x29

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 946
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 969
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 970
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1002
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1007
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1008
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1011
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1014
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    const/16 v6, 0x29

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    const/16 v6, 0x3c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1038
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1040
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1042
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1043
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_51b
    if-ge v2, v3, :cond_531

    .line 1044
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_51b

    .line 1047
    :cond_531
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1048
    const/4 v2, 0x0

    :goto_538
    if-ge v2, v3, :cond_54e

    .line 1049
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1048
    add-int/lit8 v2, v2, 0x1

    goto :goto_538

    .line 1055
    :cond_54e
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->operator:Ljava/lang/String;

    .line 1056
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->operator:Ljava/lang/String;

    const-string v5, "RGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1101

    .line 1057
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1058
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1059
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1060
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x101

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1061
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x103

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1062
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x105

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ce

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1064
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1df

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e1

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1fb

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1067
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x201

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x203

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x227

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x180

    const/16 v6, 0x62

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x182

    const/16 v6, 0x62

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x183

    const/16 v6, 0x62

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x184

    const/16 v6, 0x62

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x185

    const/16 v6, 0x62

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x107

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x109

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x10b

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x10d

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x188

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x10f

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x111

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x18b

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x18c

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x221

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1086
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xeb

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x113

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x115

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x117

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x119

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x11b

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x18f

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x190

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1095
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x205

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1096
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x207

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1097
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x229

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x192

    const/16 v6, 0x66

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1099
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x11d

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x121

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x123

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e5

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e7

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1f5

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x125

    const/16 v6, 0x68

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x127

    const/16 v6, 0x68

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x195

    const/16 v6, 0x68

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x21f

    const/16 v6, 0x68

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1111
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xee

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xef

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x129

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x12b

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1115
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x12f

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x196

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1118
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d0

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1119
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x209

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x20b

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1121
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x135

    const/16 v6, 0x6a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1f0

    const/16 v6, 0x6a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1123
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x137

    const/16 v6, 0x6b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1124
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x199

    const/16 v6, 0x6b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e9

    const/16 v6, 0x6b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1126
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x13a

    const/16 v6, 0x6c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1127
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x13c

    const/16 v6, 0x6c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1128
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x13e

    const/16 v6, 0x6c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1129
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x140

    const/16 v6, 0x6c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x142

    const/16 v6, 0x6c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1131
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x19a

    const/16 v6, 0x6c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x19c

    const/16 v6, 0x6d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1134
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x144

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x146

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1136
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x148

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1137
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x149

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x14b

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1139
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x19e

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1140
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1f9

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1141
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x235

    const/16 v6, 0x6e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1143
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1145
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x14d

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x14f

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x151

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a1

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d2

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1151
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1eb

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ed

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x20d

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x20f

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x22b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1156
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x22d

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x22f

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x231

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1159
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x153

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1160
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a5

    const/16 v6, 0x70

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1161
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x155

    const/16 v6, 0x72

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1162
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x157

    const/16 v6, 0x72

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x159

    const/16 v6, 0x72

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x211

    const/16 v6, 0x72

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x213

    const/16 v6, 0x72

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1166
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x15b

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x15d

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x161

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a8

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x219

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x163

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x165

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x167

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ab

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ad

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x21b

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x236

    const/16 v6, 0x74

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1179
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1180
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xfb

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1181
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x169

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x16b

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x16d

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x16f

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x171

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1186
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x173

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1187
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b0

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d4

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d6

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1190
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d8

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1da

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1192
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1dc

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1193
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x215

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1194
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x217

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1195
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b4

    const/16 v6, 0x76

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x175

    const/16 v6, 0x77

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1197
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0xfd

    const/16 v6, 0x79

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1198
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0xff

    const/16 v6, 0x79

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x177

    const/16 v6, 0x79

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x233

    const/16 v6, 0x79

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1202
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x17a

    const/16 v6, 0x7a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1203
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x17c

    const/16 v6, 0x7a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1204
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x17e

    const/16 v6, 0x7a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1205
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b6

    const/16 v6, 0x7a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1206
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x225

    const/16 v6, 0x7a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0x60

    const/16 v6, 0x27

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1209
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1211
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x100

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1214
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x102

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x104

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1216
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1cd

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1de

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1219
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1fa

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x200

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1221
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x202

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1222
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x181

    const/16 v6, 0x42

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x106

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x108

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x10a

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x10c

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x186

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x187

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xd0

    const/16 v6, 0x44

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x10e

    const/16 v6, 0x44

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x110

    const/16 v6, 0x44

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1233
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x189

    const/16 v6, 0x44

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x18a

    const/16 v6, 0x44

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xc8

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xcb

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1238
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x112

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1239
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x114

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x116

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x118

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x11a

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x18e

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x204

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1245
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x206

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x228

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x191

    const/16 v6, 0x46

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1248
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x11c

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x120

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x122

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x193

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e4

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e6

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1255
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1f4

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1256
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x124

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x126

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1f6

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x21e

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xcc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1262
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xce

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1263
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xcf

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x128

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x12a

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x12e

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x197

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1cf

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1271
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x208

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1272
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x20a

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1273
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x134

    const/16 v6, 0x4a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x136

    const/16 v6, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x138

    const/16 v6, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x198

    const/16 v6, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1e8

    const/16 v6, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x139

    const/16 v6, 0x4c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1279
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x13b

    const/16 v6, 0x4c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1280
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x13d

    const/16 v6, 0x4c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x13f

    const/16 v6, 0x4c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x141

    const/16 v6, 0x4c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1283
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x143

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1284
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x145

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1286
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x147

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x14a

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1289
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x19d

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1290
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1f8

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1291
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xd2

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x14c

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x14e

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x150

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a0

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d1

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ea

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1301
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ec

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x20c

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x20e

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x152

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a4

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x22a

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x22c

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x22e

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x230

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x154

    const/16 v6, 0x52

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x156

    const/16 v6, 0x52

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x158

    const/16 v6, 0x52

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a6

    const/16 v6, 0x52

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x210

    const/16 v6, 0x52

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x212

    const/16 v6, 0x52

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x15a

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x15c

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x160

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1a7

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x218

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x162

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x164

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x166

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ac

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1ae

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x21a

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xd9

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xdb

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x168

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x16a

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x16c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    const/16 v5, 0x16e

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x170

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x172

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b1

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b2

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d3

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1340
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d5

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1341
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d7

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1342
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1d9

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1343
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1db

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x214

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x216

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x174

    const/16 v6, 0x57

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    const/16 v5, 0xdd

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x176

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x178

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b3

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x232

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x179

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x17b

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x17d

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b5

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    const/16 v5, 0x224

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x391

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1360
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x386

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b1

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ac

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1363
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x392

    const/16 v6, 0x42

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1364
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b2

    const/16 v6, 0x42

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x388

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x395

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b5

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ad

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x389

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x397

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b7

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ae

    const/16 v6, 0x48

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1373
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x399

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1374
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x38a

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3aa

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b9

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1377
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3af

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ca

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x39a

    const/16 v6, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ba

    const/16 v6, 0x4b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x39c

    const/16 v6, 0x4d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3bc

    const/16 v6, 0x4d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1383
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x39d

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1384
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3bd

    const/16 v6, 0x4e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1385
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x39f

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x38c

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1387
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3bf

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1388
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3cc

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a1

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c1

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a4

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1392
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c4

    const/16 v6, 0x54

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a7

    const/16 v6, 0x58

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c7

    const/16 v6, 0x58

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a5

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x38e

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ab

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1398
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c5

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3cd

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3cb

    const/16 v6, 0x59

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x396

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b6

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1403
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b4

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c6

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b3

    const/16 v6, 0x13

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1406
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3bb

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x38f

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c9

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3ce

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c0

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c8

    const/16 v6, 0x17

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c3

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c2

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b8

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v5, 0x3be

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1421
    :cond_1101
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1422
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToGsm(C)I
    .registers 3
    .parameter "c"

    .prologue
    .line 73
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    .line 76
    :goto_5
    return v1

    .line 74
    :catch_6
    move-exception v0

    .line 76
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    goto :goto_5
.end method

.method public static charToGsm(CZ)I
    .registers 10
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x170

    const/16 v6, 0xfd

    const/16 v4, 0x12c

    const/4 v3, -0x1

    const-string v5, "GSM"

    .line 96
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->operator:Ljava/lang/String;

    const-string v2, "RGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 97
    const/16 v1, 0x3d0

    if-le p0, v1, :cond_45

    .line 98
    const/4 v0, -0x1

    .line 121
    :cond_18
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 123
    .local v0, ret:I
    if-ne v0, v3, :cond_9e

    .line 124
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 126
    if-ne v0, v3, :cond_9b

    .line 129
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->operator:Ljava/lang/String;

    const-string v2, "RGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 130
    if-ge p0, v6, :cond_90

    .line 131
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsm  charToGsmLatinO"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_90

    move v1, v4

    .line 149
    .end local v0           #ret:I
    :goto_44
    return v1

    .line 99
    :cond_45
    const/16 v1, 0x380

    if-le p0, v1, :cond_5e

    const/16 v1, 0x3d0

    if-ge p0, v1, :cond_5e

    .line 100
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsm  charToGsmGreek"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_18

    move v1, v4

    .line 102
    goto :goto_44

    .line 104
    :cond_5e
    if-lt p0, v7, :cond_75

    const/16 v1, 0x240

    if-ge p0, v1, :cond_75

    .line 105
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsm  charToGsmLatinTHR"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_18

    move v1, v4

    .line 107
    goto :goto_44

    .line 109
    :cond_75
    if-lt p0, v6, :cond_8a

    if-ge p0, v7, :cond_8a

    .line 110
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsm  charToGsmLatinTW"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_18

    move v1, v4

    .line 112
    goto :goto_44

    .line 114
    :cond_8a
    const/16 v1, 0x401

    if-ne p0, v1, :cond_18

    move v1, v4

    .line 115
    goto :goto_44

    .line 139
    .restart local v0       #ret:I
    :cond_90
    if-eqz p1, :cond_98

    .line 140
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 142
    :cond_98
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    goto :goto_44

    .line 145
    :cond_9b
    const/16 v1, 0x1b

    goto :goto_44

    :cond_9e
    move v1, v0

    .line 149
    goto :goto_44
.end method

.method public static charToGsmBYT(C)I
    .registers 7
    .parameter "c"

    .prologue
    const/16 v5, 0x170

    const/16 v4, 0xfd

    const/4 v3, -0x1

    const-string v2, "GSM"

    .line 190
    const/16 v1, 0x380

    if-le p0, v1, :cond_21

    const/16 v1, 0x3d0

    if-ge p0, v1, :cond_21

    .line 191
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsmBYT  charToGsmGreek"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 215
    .local v0, ret:I
    :goto_1c
    if-ne v0, v3, :cond_6e

    .line 216
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 219
    :goto_20
    return v1

    .line 194
    .end local v0           #ret:I
    :cond_21
    if-lt p0, v5, :cond_35

    const/16 v1, 0x240

    if-ge p0, v1, :cond_35

    .line 195
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsmBYT  charToGsmLatinTHR"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_1c

    .line 198
    .end local v0           #ret:I
    :cond_35
    if-lt p0, v4, :cond_47

    if-ge p0, v5, :cond_47

    .line 199
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsmBYT  charToGsmLatinTW"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_1c

    .line 202
    .end local v0           #ret:I
    :cond_47
    if-ge p0, v4, :cond_57

    .line 203
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsmBYT  charToGsmLatinO"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_1c

    .line 206
    .end local v0           #ret:I
    :cond_57
    const/16 v1, 0x401

    if-ne p0, v1, :cond_65

    .line 207
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsmBYT  u0401"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v0, 0x45

    .restart local v0       #ret:I
    goto :goto_1c

    .line 210
    .end local v0           #ret:I
    :cond_65
    const/4 v0, -0x1

    .line 211
    .restart local v0       #ret:I
    const-string v1, "GSM"

    const-string v1, "[1027] charToGsmBYT  else"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_6e
    move v1, v0

    .line 219
    goto :goto_20
.end method

.method public static charToGsmExtended(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 166
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 168
    .local v0, ret:I
    if-ne v0, v2, :cond_c

    .line 169
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 172
    :goto_b
    return v1

    :cond_c
    move v1, v0

    goto :goto_b
.end method

.method public static countGsmSeptets(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 594
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 597
    :goto_6
    return v1

    .line 595
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 597
    goto :goto_6
.end method

.method public static countGsmSeptets(CZ)I
    .registers 9
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x170

    const/16 v5, 0xfd

    const/4 v3, 0x1

    const/4 v2, -0x1

    const-string v4, "GSM"

    .line 612
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->operator:Ljava/lang/String;

    const-string v1, "RGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 613
    const/16 v0, 0x3d0

    if-le p0, v0, :cond_20

    .line 638
    :cond_16
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_72

    move v0, v3

    .line 663
    :goto_1f
    return v0

    .line 615
    :cond_20
    const/16 v0, 0x380

    if-le p0, v0, :cond_39

    const/16 v0, 0x3d0

    if-ge p0, v0, :cond_39

    .line 616
    const-string v0, "GSM"

    const-string v0, "[1027] countGsmSeptets  charToGsmGreek"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_16

    move v0, v3

    .line 618
    goto :goto_1f

    .line 620
    :cond_39
    if-lt p0, v6, :cond_50

    const/16 v0, 0x240

    if-ge p0, v0, :cond_50

    .line 621
    const-string v0, "GSM"

    const-string v0, "[1027] countGsmSeptets  charToGsmLatinTHR"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTHR:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_16

    move v0, v3

    .line 623
    goto :goto_1f

    .line 625
    :cond_50
    if-lt p0, v5, :cond_65

    if-ge p0, v6, :cond_65

    .line 626
    const-string v0, "GSM"

    const-string v0, "[1027] countGsmSeptets  charToGsmLatinTW"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinTW:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_16

    move v0, v3

    .line 628
    goto :goto_1f

    .line 630
    :cond_65
    const/16 v0, 0x401

    if-ne p0, v0, :cond_16

    .line 631
    const-string v0, "GSM"

    const-string v0, "[1027] countGsmSeptets  u0401"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 632
    goto :goto_1f

    .line 642
    :cond_72
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_7c

    .line 643
    const/4 v0, 0x2

    goto :goto_1f

    .line 648
    :cond_7c
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->operator:Ljava/lang/String;

    const-string v1, "RGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 649
    if-ge p0, v5, :cond_99

    .line 650
    const-string v0, "GSM"

    const-string v0, "[1027] countGsmSeptets  charToGsmLatinO"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmLatinO:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_99

    move v0, v3

    .line 652
    goto :goto_1f

    .line 659
    :cond_99
    if-eqz p1, :cond_a1

    .line 660
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_a1
    move v0, v3

    .line 663
    goto/16 :goto_1f
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 674
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 677
    :goto_6
    return v1

    .line 675
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 677
    goto :goto_6
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 691
    .local v2, sz:I
    const/4 v1, 0x0

    .line 693
    .local v1, count:I
    :goto_6
    if-ge v0, v2, :cond_14

    .line 694
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 698
    :cond_14
    return v1
.end method

.method public static countKTGsmSeptets(Ljava/lang/CharSequence;Z)[I
    .registers 7
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 715
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 717
    .local v2, ret:[I
    const/4 v0, 0x0

    .line 718
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 719
    .local v3, sz:I
    const/4 v1, 0x0

    .line 721
    .local v1, count:I
    :goto_9
    if-ge v0, v3, :cond_17

    .line 722
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 725
    :cond_17
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 726
    const/4 v4, 0x1

    aput v0, v2, v4

    .line 727
    return-object v2
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;II)I
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 750
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_18

    .line 751
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(C)I

    move-result v3

    add-int/2addr v0, v3

    .line 752
    if-le v0, p2, :cond_15

    move v3, v1

    .line 756
    :goto_14
    return v3

    .line 750
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    move v3, v2

    .line 756
    goto :goto_14
.end method

.method public static findKSC5601LimitIndex(Ljava/lang/String;II)I
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 792
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 796
    .local v4, size:I
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "EUC-KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_d} :catch_22

    move-result-object v5

    .line 802
    .local v5, text:[B
    array-length v1, v5

    .line 803
    .local v1, byte_size:I
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v0, 0x0

    .local v0, accumulator:I
    :goto_11
    if-ge v0, v1, :cond_2c

    .line 804
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-lt v6, v7, :cond_26

    .line 805
    add-int/lit8 v0, v0, 0x2

    .line 809
    :goto_1d
    if-le v0, p2, :cond_29

    .line 810
    add-int v6, p1, v3

    .line 813
    .end local v0           #accumulator:I
    .end local v1           #byte_size:I
    .end local v3           #i:I
    .end local v5           #text:[B
    :goto_21
    return v6

    .line 797
    :catch_22
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/io/UnsupportedEncodingException;
    move v6, v4

    .line 799
    goto :goto_21

    .line 807
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #accumulator:I
    .restart local v1       #byte_size:I
    .restart local v3       #i:I
    .restart local v5       #text:[B
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 803
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2c
    move v6, v4

    .line 813
    goto :goto_21
.end method

.method public static findLimitIndex(Ljava/lang/String;III)I
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 852
    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    .line 853
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v0

    .line 860
    :goto_7
    return v0

    .line 855
    :cond_8
    const/4 v0, 0x3

    if-ne p3, v0, :cond_10

    .line 856
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->findUCS2LimitIndex(Ljava/lang/String;II)I

    move-result v0

    goto :goto_7

    .line 859
    :cond_10
    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    .line 860
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->findKSC5601LimitIndex(Ljava/lang/String;II)I

    move-result v0

    goto :goto_7

    .line 864
    :cond_18
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findUCS2LimitIndex(Ljava/lang/String;II)I
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 832
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p1

    .line 833
    .local v0, numCharToBeEncoded:I
    mul-int/lit8 v1, v0, 0x2

    if-le v1, p2, :cond_e

    div-int/lit8 v1, p2, 0x2

    :goto_c
    add-int/2addr v1, p1

    return v1

    :cond_e
    move v1, v0

    goto :goto_c
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 4
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 15
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    const/4 v10, 0x1

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 448
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, p2, :cond_54

    .line 449
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 451
    .local v0, bitOffset:I
    :try_start_e
    div-int/lit8 v1, v0, 0x8

    .line 452
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 455
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 458
    .local v3, gsmVal:I
    if-le v7, v10, :cond_2e

    .line 460
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 462
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 465
    :cond_2e
    if-eqz v5, :cond_3b

    .line 466
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    const/4 v5, 0x0

    .line 448
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 468
    :cond_3b
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_41

    .line 469
    const/4 v5, 0x1

    goto :goto_38

    .line 471
    :cond_41
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_48} :catch_49

    goto :goto_38

    .line 474
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_49
    move-exception v8

    move-object v2, v8

    .line 475
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    const/4 v8, 0x0

    .line 479
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_53
    return-object v8

    :cond_54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_53
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x20

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 495
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 496
    .local v2, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_9
    add-int v4, p1, p2

    if-ge v1, v4, :cond_15

    .line 499
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 501
    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1a

    .line 523
    .end local v0           #c:I
    :cond_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 503
    .restart local v0       #c:I
    :cond_1a
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_29

    .line 504
    if-eqz v2, :cond_27

    .line 508
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    const/4 v2, 0x0

    .line 496
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 511
    :cond_27
    const/4 v2, 0x1

    goto :goto_24

    .line 514
    :cond_29
    if-eqz v2, :cond_37

    .line 515
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    :goto_35
    const/4 v2, 0x0

    goto :goto_24

    .line 517
    :cond_37
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35
.end method

.method public static gsmExtendedToChar(I)C
    .registers 4
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 253
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 255
    .local v0, ret:I
    if-ne v0, v2, :cond_c

    .line 256
    const/16 v1, 0x20

    .line 259
    :goto_b
    return v1

    :cond_c
    int-to-char v1, v0

    goto :goto_b
.end method

.method public static gsmToChar(I)C
    .registers 3
    .parameter "gsmChar"

    .prologue
    .line 236
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static isGsmSeptets(C)Z
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 762
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_c

    move v0, v2

    .line 769
    :goto_b
    return v0

    .line 766
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_16

    move v0, v2

    .line 767
    goto :goto_b

    .line 769
    :cond_16
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static packSmsChar([BII)V
    .registers 7
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 401
    div-int/lit8 v0, p1, 0x8

    .line 402
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 404
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 406
    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 407
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 409
    :cond_1b
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 320
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IIIZ)[B
    .registers 15
    .parameter "data"
    .parameter "dataOffset"
    .parameter "maxSeptets"
    .parameter "startingBitOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1b

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 349
    .local v6, sz:I
    const/4 v8, -0x1

    if-ne p2, v8, :cond_1a

    .line 350
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v4

    .line 355
    .local v4, septetCount:I
    :goto_e
    const/16 v8, 0xff

    if-le v4, v8, :cond_1c

    .line 356
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    const-string v9, "Payload cannot exceed 32767 septets"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 352
    .end local v4           #septetCount:I
    :cond_1a
    move v4, p2

    .restart local v4       #septetCount:I
    goto :goto_e

    .line 361
    :cond_1c
    mul-int/lit8 v8, v4, 0x7

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v8, v8, 0x1

    new-array v3, v8, [B

    .line 363
    .local v3, ret:[B
    move v0, p3

    .line 364
    .local v0, bitOffset:I
    div-int/lit8 v5, p3, 0x7

    .line 365
    .local v5, septets:I
    move v2, p1

    .local v2, i:I
    :goto_2a
    if-ge v2, v6, :cond_56

    if-ge v5, v4, :cond_56

    .line 366
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 368
    .local v1, c:C
    invoke-static {v1, p4}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v7

    .line 369
    .local v7, v:I
    if-ne v7, v9, :cond_4d

    .line 371
    invoke-static {v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v7

    .line 373
    invoke-static {v3, v0, v9}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 374
    add-int/lit8 v0, v0, 0x7

    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 383
    :cond_43
    :goto_43
    invoke-static {v3, v0, v7}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 384
    add-int/lit8 v5, v5, 0x1

    .line 365
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x7

    goto :goto_2a

    .line 378
    :cond_4d
    const/16 v8, 0x12c

    if-ne v7, v8, :cond_43

    .line 379
    invoke-static {v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmBYT(C)I

    move-result v7

    goto :goto_43

    .line 388
    .end local v1           #c:C
    .end local v7           #v:I
    :cond_56
    const/4 v8, 0x0

    int-to-byte v9, v5

    aput-byte v9, v3, v8

    .line 390
    return-object v3
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .registers 10
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 283
    if-eqz p1, :cond_7

    array-length v5, p1

    if-nez v5, :cond_c

    .line 284
    :cond_7
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v5

    .line 301
    :goto_b
    return-object v5

    .line 287
    :cond_c
    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v0, v5, 0x8

    .line 288
    .local v0, headerBits:I
    div-int/lit8 v1, v0, 0x7

    .line 289
    .local v1, headerSeptets:I
    rem-int/lit8 v5, v0, 0x7

    if-lez v5, :cond_34

    move v5, v6

    :goto_18
    add-int/2addr v1, v5

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 293
    .local v4, sz:I
    invoke-static {p0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    add-int v3, v5, v1

    .line 295
    .local v3, septetCount:I
    mul-int/lit8 v5, v1, 0x7

    invoke-static {p0, v7, v3, v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZ)[B

    move-result-object v2

    .line 299
    .local v2, ret:[B
    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 300
    const/4 v5, 0x2

    array-length v6, p1

    invoke-static {p1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v2

    .line 301
    goto :goto_b

    .end local v2           #ret:[B
    .end local v3           #septetCount:I
    .end local v4           #sz:I
    :cond_34
    move v5, v7

    .line 289
    goto :goto_18
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, septets:I
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;)I

    move-result v1

    .line 539
    new-array v0, v1, [B

    .line 541
    .local v0, ret:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 543
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 12
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v7, 0x1b

    .line 556
    move v2, p2

    .line 559
    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .line 560
    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_9
    if-ge v1, v4, :cond_1e

    sub-int v6, v3, p2

    if-ge v6, p3, :cond_1e

    .line 563
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 565
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v5

    .line 567
    .local v5, v:I
    if-ne v5, v7, :cond_3a

    .line 569
    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p2

    if-lt v6, p3, :cond_29

    .line 582
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_1e
    :goto_1e
    sub-int v6, v3, p2

    if-ge v6, p3, :cond_39

    .line 583
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p1, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1e

    .line 573
    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_29
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p1, v3

    .line 575
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v5

    .line 578
    :goto_31
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p1, v2

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 585
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_39
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3a
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_31
.end method
