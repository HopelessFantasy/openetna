.class final Lcom/android/contacts/SearchActivity$SearchListItemCache;
.super Ljava/lang/Object;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchListItemCache"
.end annotation


# instance fields
.field public choiceView:Landroid/widget/CheckedTextView;

.field public labelBuffer:Landroid/database/CharArrayBuffer;

.field public labelView:Landroid/widget/TextView;

.field public nameView:Landroid/widget/TextView;

.field public numberView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/SearchActivity$SearchListItemCache;->labelBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method
