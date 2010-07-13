.class public final Lcom/android/launcher/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AllAppsGridView:[I = null

.field public static final AllAppsGridView_texture:I = 0x0

.field public static final CellLayout:[I = null

.field public static final CellLayout_cellHeight:I = 0x1

.field public static final CellLayout_cellWidth:I = 0x0

.field public static final CellLayout_longAxisCells:I = 0x7

.field public static final CellLayout_longAxisEndPadding:I = 0x3

.field public static final CellLayout_longAxisStartPadding:I = 0x2

.field public static final CellLayout_shortAxisCells:I = 0x6

.field public static final CellLayout_shortAxisEndPadding:I = 0x5

.field public static final CellLayout_shortAxisStartPadding:I = 0x4

.field public static final DeleteZone:[I = null

.field public static final DeleteZone_direction:I = 0x0

.field public static final Favorite:[I = null

.field public static final Favorite_className:I = 0x0

.field public static final Favorite_packageName:I = 0x1

.field public static final Favorite_screen:I = 0x2

.field public static final Favorite_x:I = 0x3

.field public static final Favorite_y:I = 0x4

.field public static final HandleView:[I

.field public static final HandleView_direction:I

.field public static final Workspace:[I

.field public static final Workspace_defaultScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x7f01

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    new-array v0, v3, [I

    const v1, 0x7f01000a

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->AllAppsGridView:[I

    .line 528
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/launcher/R$styleable;->CellLayout:[I

    .line 683
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->DeleteZone:[I

    .line 723
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/launcher/R$styleable;->Favorite:[I

    .line 808
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->HandleView:[I

    .line 841
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->Workspace:[I

    return-void

    .line 528
    :array_34
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 723
    :array_48
    .array-data 0x4
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
