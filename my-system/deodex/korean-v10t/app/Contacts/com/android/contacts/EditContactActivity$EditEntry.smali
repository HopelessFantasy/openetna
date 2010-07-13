.class final Lcom/android/contacts/EditContactActivity$EditEntry;
.super Lcom/android/contacts/ContactEntryAdapter$Entry;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EditEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activity:Lcom/android/contacts/EditContactActivity;

.field public column:Ljava/lang/String;

.field public contentDirectory:Ljava/lang/String;

.field public contentType:I

.field public data2:Ljava/lang/String;

.field public data3:Ljava/lang/String;

.field public data4:Ljava/lang/String;

.field public groupId:J

.field public hint:Ljava/lang/String;

.field public hint2:Ljava/lang/String;

.field public isDeleted:Z

.field public isPrimary:Z

.field public isStaticLabel:Z

.field public lines:I

.field public requestCursor:I

.field public requestFocusId:I

.field public syncDataWithView:Z

.field public time:J

.field public type:I

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3385
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry$1;

    invoke-direct {v0}, Lcom/android/contacts/EditContactActivity$EditEntry$1;-><init>()V

    sput-object v0, Lcom/android/contacts/EditContactActivity$EditEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3337
    invoke-direct {p0}, Lcom/android/contacts/ContactEntryAdapter$Entry;-><init>()V

    .line 3310
    iput-wide v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    .line 3317
    iput v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3318
    iput-wide v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    .line 3320
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 3321
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3322
    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    .line 3329
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->requestFocusId:I

    .line 3335
    iput v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->requestCursor:I

    .line 3339
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/EditContactActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3297
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/EditContactActivity;)V
    .registers 6
    .parameter "activity"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3341
    invoke-direct {p0}, Lcom/android/contacts/ContactEntryAdapter$Entry;-><init>()V

    .line 3310
    iput-wide v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    .line 3317
    iput v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3318
    iput-wide v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    .line 3320
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 3321
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3322
    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    .line 3329
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->requestFocusId:I

    .line 3335
    iput v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->requestCursor:I

    .line 3342
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    .line 3343
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V
    .registers 12
    .parameter "activity"
    .parameter "label"
    .parameter "type"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3346
    invoke-direct {p0}, Lcom/android/contacts/ContactEntryAdapter$Entry;-><init>()V

    .line 3310
    iput-wide v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    .line 3317
    iput v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3318
    iput-wide v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    .line 3320
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 3321
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3322
    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    .line 3329
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->requestFocusId:I

    .line 3335
    iput v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->requestCursor:I

    .line 3347
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    .line 3348
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 3349
    iput-object p2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3350
    iput p3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    .line 3351
    iput-object p4, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3352
    iput-object p5, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 3353
    iput-wide p6, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    .line 3354
    return-void
.end method

.method public static final newBirthdayEntry(Lcom/android/contacts/EditContactActivity;JLandroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "birthtime"
    .parameter "uri"

    .prologue
    .line 3961
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/EditContactActivity$EditEntry;->newBirthdayEntry(Lcom/android/contacts/EditContactActivity;JLandroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newBirthdayEntry(Lcom/android/contacts/EditContactActivity;JLandroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "birthtime"
    .parameter "uri"
    .parameter "id"

    .prologue
    const v3, 0x7f0600ce

    .line 3969
    new-instance v1, Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-direct {v1, p0}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;)V

    .line 3970
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3971
    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3972
    iput-wide p1, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    .line 3973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3974
    .local v0, day:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3975
    iput-object p3, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 3976
    iput-wide p4, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    .line 3977
    const-string v2, "int_data"

    iput-object v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3978
    const-string v2, "stuffs"

    iput-object v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3979
    const/16 v2, 0x8

    iput v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3980
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3981
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3982
    return-object v1
.end method

.method public static final newEmailEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 3731
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newEmailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newEmailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 15
    .parameter "activity"
    .parameter "label"
    .parameter "type"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3739
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3740
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3741
    const-string v1, "data"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3742
    const-string v1, "contact_methods"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3743
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3744
    const/16 v1, 0x21

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3746
    return-object v0
.end method

.method public static final newGroupEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;Ljava/lang/String;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 12
    .parameter "activity"
    .parameter "uri"
    .parameter "data"
    .parameter "groupId"

    .prologue
    .line 3819
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newGroupEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;JLandroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newGroupEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;JLandroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 15
    .parameter "activity"
    .parameter "data"
    .parameter "groupId"
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3832
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3833
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iput-wide p2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    .line 3834
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3835
    const-string v1, "group_id"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3836
    const-string v1, "groupmembership"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3837
    const/4 v1, -0x4

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3838
    iput v3, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3839
    return-object v0
.end method

.method public static final newImEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 3884
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newImEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newImEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 15
    .parameter "activity"
    .parameter "label"
    .parameter "protocol"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3899
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3900
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3901
    const-string v1, "data"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3902
    const-string v1, "contact_methods"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3903
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3904
    const/16 v1, 0x21

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3906
    return-object v0
.end method

.method public static final newNotesEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 5
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 3911
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newNotesEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newNotesEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 6
    .parameter "activity"
    .parameter "data"
    .parameter "uri"

    .prologue
    .line 3919
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;)V

    .line 3920
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3921
    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3922
    iput-object p1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3923
    iput-object p2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 3924
    const-string v1, "notes"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3925
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->maxLines:I

    .line 3926
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3927
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    .line 3928
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3929
    const v1, 0x24001

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3932
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3933
    return-object v0
.end method

.method public static final newNotesEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 7
    .parameter "activity"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3941
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;)V

    .line 3942
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3943
    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3944
    iput-object p1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3945
    iput-object p2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 3946
    iput-wide p3, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    .line 3947
    const-string v1, "data"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3948
    const-string v1, "stuffs"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3949
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->maxLines:I

    .line 3950
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3951
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3952
    const v1, 0x24001

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3955
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3956
    return-object v0
.end method

.method public static final newOrganizationEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 11
    .parameter "activity"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 3682
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, v1

    move-object v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;->newOrganizationEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newOrganizationEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 16
    .parameter "activity"
    .parameter "label"
    .parameter "type"
    .parameter "company"
    .parameter "title"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3690
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3691
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3692
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint2:Ljava/lang/String;

    .line 3693
    iput-object p4, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    .line 3694
    const-string v1, "company"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3695
    const-string v1, "organizations"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3696
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3697
    const/16 v1, 0x2001

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3699
    return-object v0
.end method

.method public static final newPhoneEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 3708
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPhoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newPhoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 15
    .parameter "activity"
    .parameter "label"
    .parameter "type"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3716
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3717
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3718
    const-string v1, "number"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3719
    const-string v1, "phones"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3720
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3721
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3722
    return-object v0
.end method

.method public static final newPostalEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 3755
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPostalEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newPostalEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 16
    .parameter "activity"
    .parameter "label"
    .parameter "type"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v8, 0x2

    .line 3770
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3771
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3772
    const-string v1, "data"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3773
    const-string v1, "contact_methods"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3774
    iput v8, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3775
    const/16 v1, 0x2071

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3778
    iput v8, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3779
    return-object v0
.end method

.method public static final newRingtoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 6
    .parameter "activity"
    .parameter "data"
    .parameter "uri"

    .prologue
    const/4 v2, -0x1

    .line 3644
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;)V

    .line 3645
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3646
    iput-object p1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3647
    iput-object p2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 3648
    const-string v1, "custom_ringtone"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3649
    iput v2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3650
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3651
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    .line 3652
    iput v2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3653
    return-object v0
.end method

.method public static final newSendToVoicemailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 6
    .parameter "activity"
    .parameter "data"
    .parameter "uri"

    .prologue
    const/4 v2, -0x1

    .line 3661
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;)V

    .line 3664
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f060124

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3666
    iput-object p1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3667
    iput-object p2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 3668
    const-string v1, "send_to_voicemail"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3669
    iput v2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3670
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3671
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    .line 3672
    iput v2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3673
    return-object v0
.end method

.method public static final newSnsIdEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 18
    .parameter "activity"
    .parameter "label"
    .parameter "protocol"
    .parameter "snsId"
    .parameter "userid"
    .parameter "sn_siteId"
    .parameter "sn_userId"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3865
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p7

    move-wide/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3866
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const p1, 0x7f060100

    invoke-virtual {p0, p1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p0

    .end local p0
    iput-object p0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3867
    iput-object p4, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    .line 3868
    iput-object p5, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data3:Ljava/lang/String;

    .line 3869
    iput-object p6, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data4:Ljava/lang/String;

    .line 3870
    const-string p0, "sns_id"

    iput-object p0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3871
    const-string p0, "sns_ids"

    iput-object p0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3872
    const/16 p0, 0x9

    iput p0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3873
    const/4 p0, 0x0

    iput p0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3874
    return-object v0
.end method

.method public static final newSnsIdEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 13
    .parameter "activity"
    .parameter "label"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 3849
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p2

    invoke-static/range {v0 .. v9}, Lcom/android/contacts/EditContactActivity$EditEntry;->newSnsIdEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newWebsiteEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 10
    .parameter "activity"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 3788
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newWebsiteEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final newWebsiteEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 15
    .parameter "activity"
    .parameter "label"
    .parameter "type"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 3803
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 3804
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const v1, 0x7f0600d3

    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3805
    const-string v1, "data"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3806
    const-string v1, "contact_methods"

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3807
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 3808
    const/16 v1, 0x21

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3810
    return-object v0
.end method


# virtual methods
.method public bindLabel(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 3427
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3428
    .local v0, v:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    if-eqz v1, :cond_15

    .line 3429
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3458
    :goto_14
    return-void

    .line 3433
    :cond_15
    iget v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    packed-switch v1, :pswitch_data_60

    .line 3451
    :pswitch_1a
    iget v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3452
    iget v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 3453
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3457
    :cond_30
    :goto_30
    :pswitch_30
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14

    .line 3435
    :pswitch_36
    iget v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 3439
    :pswitch_42
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v1, v2}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 3443
    :pswitch_52
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Contacts$Organizations;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 3433
    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_42
        :pswitch_52
        :pswitch_36
        :pswitch_1a
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 3357
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3465
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    if-eqz v1, :cond_1d

    .line 3466
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3467
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1d

    .line 3468
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3476
    .end local v0           #text:Ljava/lang/CharSequence;
    :goto_1c
    return-object v1

    .line 3472
    :cond_1d
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 3473
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 3476
    :cond_28
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getData2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 3485
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3488
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLabel(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "typeIn"
    .parameter "labelIn"

    .prologue
    .line 3419
    iput p2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    .line 3420
    iput-object p3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    .line 3421
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 3422
    invoke-virtual {p0, p1}, Lcom/android/contacts/EditContactActivity$EditEntry;->bindLabel(Landroid/content/Context;)V

    .line 3424
    :cond_b
    return-void
.end method

.method public toValues(Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const-string v4, "aux_data"

    const-string v7, "kind"

    const-string v6, "type"

    const-string v5, "label"

    .line 3498
    const/4 v1, 0x0

    .line 3499
    .local v1, success:Z
    const/4 v0, 0x0

    .line 3501
    .local v0, labelString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    if-eqz v2, :cond_22

    .line 3503
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3505
    :cond_22
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    packed-switch v2, :pswitch_data_1f0

    .line 3594
    const-string v2, "EditContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown kind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3596
    const-string v2, "kind"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3597
    const-string v2, "type"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3605
    :cond_5c
    :goto_5c
    iget-boolean v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    if-eqz v2, :cond_69

    .line 3606
    const-string v2, "isprimary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3610
    :cond_69
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    if-eqz v2, :cond_85

    iget-boolean v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    if-eqz v2, :cond_85

    .line 3612
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3615
    :cond_85
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_1ed

    .line 3616
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cd

    .line 3617
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    move v2, v1

    .line 3636
    :goto_97
    return v2

    .line 3507
    :pswitch_98
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-eqz v2, :cond_9d

    .line 3508
    const/4 v0, 0x0

    .line 3510
    :cond_9d
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    const-string v2, "type"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5c

    .line 3515
    :pswitch_ae
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-eqz v2, :cond_b3

    .line 3516
    const/4 v0, 0x0

    .line 3518
    :cond_b3
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    const-string v2, "kind"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3520
    const-string v2, "type"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5c

    .line 3524
    :pswitch_cf
    const-string v2, "kind"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3525
    const-string v2, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3526
    const-string v2, "label"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3527
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_fb

    .line 3528
    const-string v2, "aux_data"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 3531
    :cond_fb
    const-string v2, "aux_data"

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Contacts$ContactMethods;->encodeCustomImProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 3537
    :pswitch_10c
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-eqz v2, :cond_111

    .line 3538
    const/4 v0, 0x0

    .line 3540
    :cond_111
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    const-string v2, "kind"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3542
    const-string v2, "type"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5c

    .line 3546
    :pswitch_12e
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-eqz v2, :cond_133

    .line 3547
    const/4 v0, 0x0

    .line 3549
    :cond_133
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const-string v2, "kind"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3551
    const-string v2, "type"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5c

    .line 3555
    :pswitch_150
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-eqz v2, :cond_155

    .line 3556
    const/4 v0, 0x0

    .line 3558
    :cond_155
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    const-string v2, "type"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3561
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    if-eqz v2, :cond_17e

    .line 3563
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v3, 0x7f050031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    .line 3565
    :cond_17e
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 3566
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_191

    .line 3567
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 3569
    :cond_191
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    const/4 v1, 0x1

    goto/16 :goto_5c

    .line 3577
    :pswitch_19f
    const-string v2, "kind"

    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5c

    .line 3582
    :pswitch_1ac
    const-string v2, "label"

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 3584
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    const-string v2, "sn_site_id"

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data3:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    const-string v2, "sn_user_id"

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data4:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    const/4 v1, 0x1

    goto/16 :goto_5c

    .line 3620
    :cond_1cd
    iget v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1e1

    .line 3621
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1de
    move v2, v8

    .line 3632
    goto/16 :goto_97

    .line 3626
    :cond_1e1
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1de

    .line 3636
    :cond_1ed
    const/4 v2, 0x0

    goto/16 :goto_97

    .line 3505
    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_10c
        :pswitch_cf
        :pswitch_150
        :pswitch_98
        :pswitch_12e
        :pswitch_19f
        :pswitch_19f
        :pswitch_1ac
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3362
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3365
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3366
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3367
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3369
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3370
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3371
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->data4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3372
    iget-wide v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3373
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    if-eqz v0, :cond_63

    move v0, v3

    :goto_44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3377
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-eqz v0, :cond_65

    move v0, v3

    :goto_4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3378
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    if-eqz v0, :cond_67

    move v0, v3

    :goto_54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3379
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    if-eqz v0, :cond_69

    move v0, v3

    :goto_5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    invoke-super {p0, p1}, Lcom/android/contacts/ContactEntryAdapter$Entry;->writeToParcel(Landroid/os/Parcel;)V

    .line 3383
    return-void

    :cond_63
    move v0, v2

    .line 3376
    goto :goto_44

    :cond_65
    move v0, v2

    .line 3377
    goto :goto_4c

    :cond_67
    move v0, v2

    .line 3378
    goto :goto_54

    :cond_69
    move v0, v2

    .line 3379
    goto :goto_5c
.end method
