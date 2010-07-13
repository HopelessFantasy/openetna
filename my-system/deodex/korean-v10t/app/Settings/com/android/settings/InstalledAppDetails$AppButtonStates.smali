.class final enum Lcom/android/settings/InstalledAppDetails$AppButtonStates;
.super Ljava/lang/Enum;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppButtonStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/InstalledAppDetails$AppButtonStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/InstalledAppDetails$AppButtonStates;

.field public static final enum CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

.field public static final enum FACTORY_RESET:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

.field public static final enum NONE:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

.field public static final enum UNINSTALL:Lcom/android/settings/InstalledAppDetails$AppButtonStates;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    const-string v1, "CLEAR_DATA"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/InstalledAppDetails$AppButtonStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 116
    new-instance v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/InstalledAppDetails$AppButtonStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->UNINSTALL:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 117
    new-instance v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    const-string v1, "FACTORY_RESET"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/InstalledAppDetails$AppButtonStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->FACTORY_RESET:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 118
    new-instance v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/InstalledAppDetails$AppButtonStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->NONE:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->UNINSTALL:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->FACTORY_RESET:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->NONE:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->$VALUES:[Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/InstalledAppDetails$AppButtonStates;
    .registers 2
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    return-object p0
.end method

.method public static final values()[Lcom/android/settings/InstalledAppDetails$AppButtonStates;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->$VALUES:[Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    invoke-virtual {v0}, [Lcom/android/settings/InstalledAppDetails$AppButtonStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    return-object v0
.end method
