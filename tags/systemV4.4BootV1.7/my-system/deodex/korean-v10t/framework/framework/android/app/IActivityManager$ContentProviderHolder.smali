.class public Landroid/app/IActivityManager$ContentProviderHolder;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderHolder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final info:Landroid/content/pm/ProviderInfo;

.field public noReleaseNeeded:Z

.field public final permissionFailure:Ljava/lang/String;

.field public provider:Landroid/content/IContentProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 313
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder$1;

    invoke-direct {v0}, Landroid/app/IActivityManager$ContentProviderHolder$1;-><init>()V

    sput-object v0, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;)V
    .registers 3
    .parameter "_info"

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->permissionFailure:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;Ljava/lang/String;)V
    .registers 3
    .parameter "_info"
    .parameter "_permissionFailure"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 295
    iput-object p2, p0, Landroid/app/IActivityManager$ContentProviderHolder;->permissionFailure:Ljava/lang/String;

    .line 296
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->permissionFailure:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderNative;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 330
    return-void

    .line 329
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/IActivityManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 304
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->permissionFailure:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_21

    .line 306
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 310
    :goto_18
    iget-boolean v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return-void

    .line 308
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_18

    :cond_26
    move v0, v1

    .line 310
    goto :goto_1d
.end method
