.class Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;
.super Ljava/lang/Object;
.source "VCardDataBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/syncml/pim/vcard/VCardDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressShower"
.end annotation


# instance fields
.field private mContact:Landroid/syncml/pim/vcard/ContactStruct;

.field final synthetic this$0:Landroid/syncml/pim/vcard/VCardDataBuilder;


# direct methods
.method public constructor <init>(Landroid/syncml/pim/vcard/VCardDataBuilder;Landroid/syncml/pim/vcard/ContactStruct;)V
    .registers 3
    .parameter
    .parameter "contact"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;->this$0:Landroid/syncml/pim/vcard/VCardDataBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;->mContact:Landroid/syncml/pim/vcard/ContactStruct;

    .line 64
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;->this$0:Landroid/syncml/pim/vcard/VCardDataBuilder;

    invoke-static {v0}, Landroid/syncml/pim/vcard/VCardDataBuilder;->access$100(Landroid/syncml/pim/vcard/VCardDataBuilder;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;->this$0:Landroid/syncml/pim/vcard/VCardDataBuilder;

    invoke-static {v2}, Landroid/syncml/pim/vcard/VCardDataBuilder;->access$000(Landroid/syncml/pim/vcard/VCardDataBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/syncml/pim/vcard/VCardDataBuilder$ProgressShower;->mContact:Landroid/syncml/pim/vcard/ContactStruct;

    invoke-virtual {v2}, Landroid/syncml/pim/vcard/ContactStruct;->displayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
