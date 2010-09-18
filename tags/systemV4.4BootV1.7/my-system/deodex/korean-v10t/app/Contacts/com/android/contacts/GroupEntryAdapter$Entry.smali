.class public Lcom/android/contacts/GroupEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "GroupEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final KIND_CUSTOM_GROUP:I = 0x4

.field public static final KIND_INVALID:I = -0x1

.field public static final KIND_MY_CONTACTS:I = 0x2

.field public static final KIND_NO_GROUP:I = 0x1

.field public static final KIND_SOCIAL_GROUP:I = 0x5

.field public static final KIND_STARRED_GROUP:I = 0x3


# instance fields
.field public dispName:Ljava/lang/String;

.field public id:J

.field public kind:I

.field public name:Ljava/lang/String;

.field public numOfMember:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->id:J

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->id:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->numOfMember:I

    .line 49
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-object v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/android/contacts/GroupEntryAdapter$Entry;->numOfMember:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
