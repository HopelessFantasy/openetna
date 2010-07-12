.class public final Landroid/provider/Contacts$Presence;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PresenceColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PERSON_ID:Ljava/lang/String; = "person"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1678
    const-string v0, "content://contacts/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .registers 2
    .parameter "status"

    .prologue
    .line 1694
    packed-switch p0, :pswitch_data_18

    .line 1710
    const v0, 0x108006a

    :goto_6
    return v0

    .line 1696
    :pswitch_7
    const v0, 0x108006b

    goto :goto_6

    .line 1700
    :pswitch_b
    const v0, 0x1080067

    goto :goto_6

    .line 1703
    :pswitch_f
    const v0, 0x1080068

    goto :goto_6

    .line 1706
    :pswitch_13
    const v0, 0x1080069

    goto :goto_6

    .line 1694
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public static final setPresenceIcon(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "icon"
    .parameter "serverStatus"

    .prologue
    .line 1721
    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1722
    return-void
.end method
