.class public Landroid/content/ActiveSyncInfo;
.super Ljava/lang/Object;
.source "ActiveSyncInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ActiveSyncInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Ljava/lang/String;

.field public final authority:Ljava/lang/String;

.field public final authorityId:I

.field public final startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Landroid/content/ActiveSyncInfo$1;

    invoke-direct {v0}, Landroid/content/ActiveSyncInfo$1;-><init>()V

    sput-object v0, Landroid/content/ActiveSyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .parameter "authorityId"
    .parameter "account"
    .parameter "authority"
    .parameter "startTime"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/content/ActiveSyncInfo;->authorityId:I

    .line 32
    iput-object p2, p0, Landroid/content/ActiveSyncInfo;->account:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Landroid/content/ActiveSyncInfo;->authority:Ljava/lang/String;

    .line 34
    iput-wide p4, p0, Landroid/content/ActiveSyncInfo;->startTime:J

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "parcel"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ActiveSyncInfo;->authorityId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ActiveSyncInfo;->account:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ActiveSyncInfo;->authority:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/ActiveSyncInfo;->startTime:J

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 42
    iget v0, p0, Landroid/content/ActiveSyncInfo;->authorityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Landroid/content/ActiveSyncInfo;->account:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Landroid/content/ActiveSyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-wide v0, p0, Landroid/content/ActiveSyncInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    return-void
.end method
