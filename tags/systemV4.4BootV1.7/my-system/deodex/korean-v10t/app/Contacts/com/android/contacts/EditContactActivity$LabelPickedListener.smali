.class final Lcom/android/contacts/EditContactActivity$LabelPickedListener;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LabelPickedListener"
.end annotation


# instance fields
.field mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

.field mLabels:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$EditEntry;[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "entry"
    .parameter "labels"

    .prologue
    .line 3263
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3264
    iput-object p2, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 3265
    iput-object p3, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mLabels:[Ljava/lang/String;

    .line 3266
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 3270
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget v1, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_39

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget v1, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_39

    .line 3275
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mLabels:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/android/contacts/EditContactActivity;->getTypeFromLabelPosition([Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3276
    .local v0, type:I
    if-nez v0, :cond_23

    .line 3277
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->access$1000(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V

    .line 3288
    .end local v0           #type:I
    :goto_22
    return-void

    .line 3279
    .restart local v0       #type:I
    :cond_23
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/contacts/EditContactActivity$EditEntry;->setLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 3280
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1, v4}, Lcom/android/contacts/EditContactActivity;->access$702(Lcom/android/contacts/EditContactActivity;Z)Z

    .line 3281
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$000(Lcom/android/contacts/EditContactActivity;)V

    goto :goto_22

    .line 3284
    .end local v0           #type:I
    :cond_39
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/contacts/EditContactActivity$EditEntry;->setLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 3285
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1, v4}, Lcom/android/contacts/EditContactActivity;->access$702(Lcom/android/contacts/EditContactActivity;Z)Z

    .line 3286
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$LabelPickedListener;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$000(Lcom/android/contacts/EditContactActivity;)V

    goto :goto_22
.end method
