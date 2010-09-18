.class public abstract Landroid/security/Keystore;
.super Ljava/lang/Object;
.source "Keystore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/Keystore$1;,
        Landroid/security/Keystore$FileKeystore;
    }
.end annotation


# static fields
.field public static final BOOTUP:I = 0x0

.field public static final LOCKED:I = 0x2

.field private static final NOTFOUND:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Keystore"

.field public static final UNINITIALIZED:I = 0x1

.field public static final UNLOCKED:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/security/Keystore;->NOTFOUND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Landroid/security/Keystore;->NOTFOUND:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Landroid/security/Keystore;
    .registers 2

    .prologue
    .line 37
    new-instance v0, Landroid/security/Keystore$FileKeystore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/Keystore$FileKeystore;-><init>(Landroid/security/Keystore$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract listKeys(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract lock()I
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract reset()I
.end method

.method public abstract setPassword(Ljava/lang/String;)I
.end method

.method public abstract unlock(Ljava/lang/String;)I
.end method
