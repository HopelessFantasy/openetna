.class final Lcom/android/contacts/ContactsListActivity$ContactListItemCache;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContactListItemCache"
.end annotation


# instance fields
.field public binderView:Landroid/view/View;

.field public callView:Landroid/widget/ImageView;

.field public choiceView:Landroid/widget/CheckedTextView;

.field public iconSn1:Landroid/widget/ImageView;

.field public iconSn2:Landroid/widget/ImageView;

.field public iconSnNew:Landroid/widget/ImageView;

.field public labelBuffer:Landroid/database/CharArrayBuffer;

.field public labelView:Landroid/widget/TextView;

.field public nameBuffer:Landroid/database/CharArrayBuffer;

.field public nameView:Landroid/widget/TextView;

.field public numberView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public presenceView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x80

    .line 2523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2525
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    .line 2527
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method
