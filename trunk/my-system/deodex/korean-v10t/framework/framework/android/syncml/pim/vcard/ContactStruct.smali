.class public Landroid/syncml/pim/vcard/ContactStruct;
.super Ljava/lang/Object;
.source "ContactStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;,
        Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;,
        Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ContactStruct"

.field public static final NAME_ORDER_TYPE_ENGLISH:I = 0x0

.field public static final NAME_ORDER_TYPE_JAPANESE:I = 0x1


# instance fields
.field public company:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contactmethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field public extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public organizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field public phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/vcard/ContactStruct$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public phoneticName:Ljava/lang/String;

.field public photoBytes:[B

.field public photoType:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    .line 111
    return-void
.end method

.method public static constructContactFromVNode(Landroid/syncml/pim/VNode;I)Landroid/syncml/pim/vcard/ContactStruct;
    .registers 28
    .parameter "node"
    .parameter "nameOrderType"

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/VNode;->VName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 293
    const-string p0, "ContactStruct"

    .end local p0
    const-string p1, "Non VCARD data is inserted."

    .end local p1
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 p0, 0x0

    .line 725
    :goto_16
    return-object p0

    .line 301
    .restart local p0
    .restart local p1
    :cond_17
    const/4 v6, 0x0

    .line 302
    .local v6, fullName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 306
    .local v7, nameFromNProperty:Ljava/lang/String;
    const/4 v12, 0x0

    .line 307
    .local v12, xPhoneticFirstName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 308
    .local v14, xPhoneticMiddleName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 310
    .local v13, xPhoneticLastName:Ljava/lang/String;
    new-instance v5, Landroid/syncml/pim/vcard/ContactStruct;

    invoke-direct {v5}, Landroid/syncml/pim/vcard/ContactStruct;-><init>()V

    .line 316
    .local v5, contact:Landroid/syncml/pim/vcard/ContactStruct;
    const/4 v8, 0x0

    .line 317
    .local v8, prefIsSetAddress:Z
    const/4 v11, 0x0

    .line 318
    .local v11, prefIsSetPhone:Z
    const/4 v9, 0x0

    .line 319
    .local v9, prefIsSetEmail:Z
    const/4 v10, 0x0

    .line 321
    .local v10, prefIsSetOrganization:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 p0, v0

    .end local p0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    move/from16 v21, v10

    .end local v10           #prefIsSetOrganization:Z
    .local v21, prefIsSetOrganization:Z
    move v15, v9

    .end local v9           #prefIsSetEmail:Z
    .local v15, prefIsSetEmail:Z
    move/from16 v22, v11

    .end local v11           #prefIsSetPhone:Z
    .local v22, prefIsSetPhone:Z
    move/from16 v20, v8

    .end local v8           #prefIsSetAddress:Z
    .local v20, prefIsSetAddress:Z
    move-object/from16 v24, v13

    .end local v13           #xPhoneticLastName:Ljava/lang/String;
    .local v24, xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v25, v14

    .end local v14           #xPhoneticMiddleName:Ljava/lang/String;
    .local v25, xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v23, v12

    .end local v12           #xPhoneticFirstName:Ljava/lang/String;
    .local v23, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v19, v7

    .end local v7           #nameFromNProperty:Ljava/lang/String;
    .local v19, nameFromNProperty:Ljava/lang/String;
    move-object/from16 v17, v6

    .end local v6           #fullName:Ljava/lang/String;
    .end local v18           #i$:Ljava/util/Iterator;
    .local v17, fullName:Ljava/lang/String;
    :cond_40
    :goto_40
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_836

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/syncml/pim/PropertyNode;

    .line 322
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 p0, v0

    .line 324
    .local p0, name:Ljava/lang/String;
    iget-object v6, v11, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 328
    const-string v6, "VERSION"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .local v10, prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .local v12, xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .local v13, xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    :goto_75
    move/from16 v21, v9

    .end local v9           #prefIsSetOrganization:Z
    .restart local v21       #prefIsSetOrganization:Z
    move v15, v8

    .end local v8           #prefIsSetEmail:Z
    .restart local v15       #prefIsSetEmail:Z
    move/from16 v22, v10

    .end local v10           #prefIsSetPhone:Z
    .restart local v22       #prefIsSetPhone:Z
    move/from16 v20, v7

    .end local v7           #prefIsSetAddress:Z
    .restart local v20       #prefIsSetAddress:Z
    move-object/from16 v24, v12

    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v25, v13

    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v23, v11

    .end local v11           #xPhoneticFirstName:Ljava/lang/String;
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v19, v6

    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 v17, p0

    .line 651
    .end local p0           #fullName:Ljava/lang/String;
    .restart local v17       #fullName:Ljava/lang/String;
    goto :goto_40

    .line 330
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .local p0, name:Ljava/lang/String;
    :cond_87
    const-string v6, "FN"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 331
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    goto :goto_75

    .line 332
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_a7
    const-string v6, "NAME"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    if-nez v17, :cond_c9

    .line 335
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    goto :goto_75

    .line 336
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_c9
    const-string v6, "N"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 337
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Landroid/syncml/pim/vcard/ContactStruct;->getNameFromNProperty(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local p0, nameFromNProperty:Ljava/lang/String;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, p0

    .end local p0           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto :goto_75

    .line 339
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_ef
    const-string v6, "SORT-STRING"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 340
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 341
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_117
    const-string v6, "SOUND"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 342
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    const-string v6, "X-IRMC-N"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_176

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move-object/from16 p0, v0

    if-nez p0, :cond_176

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local p0, builder:Ljava/lang/StringBuilder;
    iget-object v9, v11, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 350
    .local v9, value:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 351
    .local v8, length:I
    const/4 v6, 0x0

    .local v6, i:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_146
    if-ge v7, v8, :cond_15a

    .line 352
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 353
    .local v6, ch:C
    const/16 v10, 0x3b

    if-eq v6, v10, :cond_156

    .line 354
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_156
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .local v6, i:I
    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_146

    .line 357
    :cond_15a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .line 358
    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 359
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .end local p0           #fullName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    :cond_176
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .restart local p0       #fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 361
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_18c
    const-string v6, "ADR"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e6

    .line 362
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 p0, v0

    .line 363
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 364
    .local v7, valuesAreAllEmpty:Z
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    :cond_1a1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_977

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 365
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .end local v6           #value:Ljava/lang/String;
    if-lez v6, :cond_1a1

    .line 366
    const/16 p0, 0x0

    .line 370
    .end local v7           #valuesAreAllEmpty:Z
    .local p0, valuesAreAllEmpty:Z
    :goto_1b5
    if-nez p0, :cond_40

    .line 374
    const/4 v6, 0x2

    .line 375
    .local v6, kind:I
    const/4 v7, -0x1

    .line 376
    .local v7, type:I
    const-string v9, ""

    .line 377
    .local v9, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 378
    .local v10, isPrimary:Z
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 p0, v0

    .end local p0           #valuesAreAllEmpty:Z
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move/from16 v14, v20

    .end local v20           #prefIsSetAddress:Z
    .local v14, prefIsSetAddress:Z
    :goto_1c7
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_244

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 379
    .local v8, typeString:Ljava/lang/String;
    const-string v12, "PREF"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e1

    if-nez v14, :cond_1e1

    .line 381
    const/4 v8, 0x1

    .line 382
    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    const/4 v10, 0x1

    :goto_1df
    move v14, v8

    .line 409
    .end local v8           #prefIsSetAddress:Z
    .restart local v14       #prefIsSetAddress:Z
    goto :goto_1c7

    .line 383
    .local v8, typeString:Ljava/lang/String;
    :cond_1e1
    const-string v12, "HOME"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ee

    .line 384
    const/4 v7, 0x1

    .line 385
    const-string v9, ""

    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto :goto_1df

    .line 386
    .local v8, typeString:Ljava/lang/String;
    .restart local v14       #prefIsSetAddress:Z
    :cond_1ee
    const-string v12, "WORK"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1fe

    const-string v12, "COMPANY"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_203

    .line 391
    :cond_1fe
    const/4 v7, 0x2

    .line 392
    const-string v9, ""

    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto :goto_1df

    .line 393
    .local v8, typeString:Ljava/lang/String;
    .restart local v14       #prefIsSetAddress:Z
    :cond_203
    const-string v12, "POSTAL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20e

    .line 394
    const/4 v6, 0x2

    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto :goto_1df

    .line 395
    .local v8, typeString:Ljava/lang/String;
    .restart local v14       #prefIsSetAddress:Z
    :cond_20e
    const-string v12, "PARCEL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_974

    const-string v12, "DOM"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_974

    const-string v12, "INTL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_228

    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto :goto_1df

    .line 401
    .local v8, typeString:Ljava/lang/String;
    .restart local v14       #prefIsSetAddress:Z
    :cond_228
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "X-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23e

    if-gez v7, :cond_23e

    .line 403
    const/4 v7, 0x0

    .line 404
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v9           #label:Ljava/lang/String;
    move-result-object v9

    .restart local v9       #label:Ljava/lang/String;
    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto :goto_1df

    .line 405
    .local v8, typeString:Ljava/lang/String;
    .restart local v14       #prefIsSetAddress:Z
    :cond_23e
    if-gez v7, :cond_974

    .line 408
    const/4 v7, 0x0

    .line 409
    move-object v9, v8

    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto :goto_1df

    .line 413
    .end local v8           #prefIsSetAddress:Z
    .restart local v14       #prefIsSetAddress:Z
    :cond_244
    if-gez v7, :cond_247

    .line 414
    const/4 v7, 0x1

    .line 421
    :cond_247
    iget-object v13, v11, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 422
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    .line 423
    .local v16, size:I
    const/16 p0, 0x1

    move/from16 v0, v16

    move/from16 v1, p0

    if-le v0, v1, :cond_2e3

    .line 424
    .end local p0           #i$:Ljava/util/Iterator;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v8, builder:Ljava/lang/StringBuilder;
    const/16 p0, 0x1

    .line 426
    .local p0, builderIsEmpty:Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .end local v11           #propertyNode:Landroid/syncml/pim/PropertyNode;
    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b9

    .line 428
    const/4 v11, 0x1

    sub-int v11, v16, v11

    .local v11, i:I
    move v12, v11

    .end local v11           #i:I
    .local v12, i:I
    move/from16 v11, p0

    .end local v16           #size:I
    .end local p0           #builderIsEmpty:Z
    .local v11, builderIsEmpty:Z
    :goto_276
    if-ltz v12, :cond_299

    .line 429
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 430
    .local p0, addressPart:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_970

    .line 431
    if-nez v11, :cond_28b

    .line 432
    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    .end local v11           #builderIsEmpty:Z
    :cond_28b
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/16 p0, 0x0

    .line 428
    .local p0, builderIsEmpty:Z
    :goto_293
    add-int/lit8 v11, v12, -0x1

    .end local v12           #i:I
    .local v11, i:I
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    move/from16 v11, p0

    .end local p0           #builderIsEmpty:Z
    .local v11, builderIsEmpty:Z
    goto :goto_276

    :cond_299
    move/from16 p0, v11

    .end local v11           #builderIsEmpty:Z
    .restart local p0       #builderIsEmpty:Z
    move v11, v12

    .line 450
    .end local v12           #i:I
    .local v11, i:I
    :goto_29c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builderIsEmpty:Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 454
    .end local v11           #i:I
    .local v8, address:Ljava/lang/String;
    :goto_2a4
    invoke-virtual/range {v5 .. v10}, Landroid/syncml/pim/vcard/ContactStruct;->addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .local v10, prefIsSetPhone:Z
    move v7, v14

    .end local v14           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .local v12, xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .local v13, xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .line 455
    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 439
    .end local v11           #xPhoneticFirstName:Ljava/lang/String;
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .local v6, kind:I
    .local v7, type:I
    .local v8, builder:Ljava/lang/StringBuilder;
    .local v9, label:Ljava/lang/String;
    .local v10, isPrimary:Z
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #prefIsSetAddress:Z
    .restart local v15       #prefIsSetEmail:Z
    .restart local v16       #size:I
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, builderIsEmpty:Z
    :cond_2b9
    const/4 v11, 0x0

    .local v11, i:I
    move v12, v11

    .end local v11           #i:I
    .local v12, i:I
    move/from16 v11, p0

    .end local p0           #builderIsEmpty:Z
    .local v11, builderIsEmpty:Z
    :goto_2bd
    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_96b

    .line 440
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 441
    .local p0, addressPart:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_967

    .line 442
    if-nez v11, :cond_2d5

    .line 443
    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    .end local v11           #builderIsEmpty:Z
    :cond_2d5
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const/16 p0, 0x0

    .line 439
    .local p0, builderIsEmpty:Z
    :goto_2dd
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .local v11, i:I
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    move/from16 v11, p0

    .end local p0           #builderIsEmpty:Z
    .local v11, builderIsEmpty:Z
    goto :goto_2bd

    .line 452
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v12           #i:I
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    :cond_2e3
    iget-object v8, v11, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .local v8, address:Ljava/lang/String;
    goto :goto_2a4

    .line 455
    .end local v6           #kind:I
    .end local v7           #type:I
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #prefIsSetAddress:Z
    .end local v16           #size:I
    .restart local v20       #prefIsSetAddress:Z
    .local p0, name:Ljava/lang/String;
    :cond_2e6
    const-string v6, "ORG"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_369

    .line 457
    const/4 v7, 0x1

    .line 458
    .restart local v7       #type:I
    const/4 v10, 0x0

    .line 460
    .restart local v10       #isPrimary:Z
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move/from16 v8, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v8, prefIsSetOrganization:Z
    :goto_2fe
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_318

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 461
    .local v6, typeString:Ljava/lang/String;
    const-string v9, "PREF"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v6           #typeString:Ljava/lang/String;
    if-eqz v6, :cond_964

    if-nez v8, :cond_961

    .line 464
    const/4 v6, 0x1

    .line 465
    .end local v8           #prefIsSetOrganization:Z
    .local v6, prefIsSetOrganization:Z
    const/4 v10, 0x1

    :goto_316
    move v8, v6

    .end local v6           #prefIsSetOrganization:Z
    .restart local v8       #prefIsSetOrganization:Z
    goto :goto_2fe

    .line 470
    :cond_318
    iget-object v6, v11, Landroid/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 471
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    .line 472
    .local p0, size:I
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #size:I
    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local p0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_327
    :goto_327
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_348

    .line 474
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_327

    .line 476
    const/16 v9, 0x20

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_327

    .line 480
    :cond_348
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    const-string v6, ""

    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v0, v5

    move v1, v7

    move-object/from16 v2, p0

    move-object v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/syncml/pim/vcard/ContactStruct;->addOrganization(ILjava/lang/String;Ljava/lang/String;Z)V

    move v9, v8

    .end local v8           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .local v10, prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .local v12, xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .local v13, xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    move v8, v15

    .line 481
    .end local v15           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    goto/16 :goto_75

    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_369
    const-string v6, "TITLE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_392

    .line 482
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/syncml/pim/vcard/ContactStruct;->setPosition(Ljava/lang/String;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 483
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_392
    const-string v6, "ROLE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3bb

    .line 484
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/syncml/pim/vcard/ContactStruct;->setPosition(Ljava/lang/String;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 485
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_3bb
    const-string v6, "PHOTO"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_411

    .line 487
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    const-string v6, "VALUE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 488
    .local p0, valueType:Ljava/lang/String;
    if-eqz p0, :cond_3f4

    const-string v6, "URL"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #valueType:Ljava/lang/String;
    if-eqz p0, :cond_3f4

    :cond_3e1
    :goto_3e1
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .line 500
    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 494
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .end local p0           #fullName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    :cond_3f4
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    .line 495
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 p0, v0

    const-string v6, "TYPE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, type:Ljava/lang/String;
    if-eqz v7, :cond_3e1

    .line 497
    iput-object v7, v5, Landroid/syncml/pim/vcard/ContactStruct;->photoType:Ljava/lang/String;

    goto :goto_3e1

    .line 500
    .end local v7           #type:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_411
    const-string v6, "LOGO"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46e

    .line 503
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    const-string v6, "VALUE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 504
    .local p0, valueType:Ljava/lang/String;
    if-eqz p0, :cond_44a

    const-string v6, "URL"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #valueType:Ljava/lang/String;
    if-eqz p0, :cond_44a

    :cond_437
    :goto_437
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .line 513
    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 506
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .end local p0           #fullName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    :cond_44a
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    move-object/from16 p0, v0

    if-nez p0, :cond_437

    .line 507
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue_bytes:[B

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    .line 508
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 p0, v0

    const-string v6, "TYPE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, type:Ljava/lang/String;
    if-eqz v7, :cond_437

    .line 510
    iput-object v7, v5, Landroid/syncml/pim/vcard/ContactStruct;->photoType:Ljava/lang/String;

    goto :goto_437

    .line 513
    .end local v7           #type:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_46e
    const-string v6, "EMAIL"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f9

    .line 514
    const/4 v7, -0x1

    .line 515
    .local v7, type:I
    const/4 v9, 0x0

    .line 516
    .local v9, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 517
    .local v10, isPrimary:Z
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move v6, v15

    .end local v15           #prefIsSetEmail:Z
    .local v6, prefIsSetEmail:Z
    :cond_486
    :goto_486
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d8

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 518
    .local v8, typeString:Ljava/lang/String;
    const-string v12, "PREF"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49f

    if-nez v6, :cond_49f

    .line 520
    const/4 v6, 0x1

    .line 521
    const/4 v10, 0x1

    goto :goto_486

    .line 522
    :cond_49f
    const-string v12, "HOME"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4a9

    .line 523
    const/4 v7, 0x1

    goto :goto_486

    .line 524
    :cond_4a9
    const-string v12, "WORK"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4b3

    .line 525
    const/4 v7, 0x2

    goto :goto_486

    .line 526
    :cond_4b3
    const-string v12, "CELL"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4be

    .line 528
    const/4 v7, 0x0

    .line 531
    move-object v9, v8

    goto :goto_486

    .line 533
    :cond_4be
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "X-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4d3

    if-gez v7, :cond_4d3

    .line 535
    const/4 v7, 0x0

    .line 536
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v9           #label:Ljava/lang/String;
    move-result-object v9

    .restart local v9       #label:Ljava/lang/String;
    goto :goto_486

    .line 537
    :cond_4d3
    if-gez v7, :cond_486

    .line 541
    const/4 v7, 0x0

    .line 542
    move-object v9, v8

    goto :goto_486

    .line 546
    .end local v8           #typeString:Ljava/lang/String;
    :cond_4d8
    if-gez v7, :cond_4db

    .line 547
    const/4 v7, 0x3

    .line 549
    :cond_4db
    const/4 v12, 0x1

    iget-object v14, v11, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object v11, v5

    move v13, v7

    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroid/syncml/pim/vcard/ContactStruct;->addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V

    .end local v11           #propertyNode:Landroid/syncml/pim/PropertyNode;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move v8, v6

    .end local v6           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .local v10, prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    move-object/from16 v6, v19

    .line 551
    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    goto/16 :goto_75

    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_4f9
    const-string v6, "TEL"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5be

    .line 552
    const/4 v7, -0x1

    .line 553
    .local v7, type:I
    const/4 v9, 0x0

    .line 554
    .local v9, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 555
    .local v10, isPrimary:Z
    const/4 v6, 0x0

    .line 556
    .local v6, isFax:Z
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move/from16 v8, v22

    .end local v22           #prefIsSetPhone:Z
    .local v8, prefIsSetPhone:Z
    :cond_513
    :goto_513
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_588

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 557
    .local v12, typeString:Ljava/lang/String;
    const-string v13, "PREF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52c

    if-nez v8, :cond_52c

    .line 559
    const/4 v8, 0x1

    .line 560
    const/4 v10, 0x1

    goto :goto_513

    .line 561
    :cond_52c
    const-string v13, "HOME"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_536

    .line 562
    const/4 v7, 0x1

    goto :goto_513

    .line 563
    :cond_536
    const-string v13, "WORK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_540

    .line 564
    const/4 v7, 0x3

    goto :goto_513

    .line 565
    :cond_540
    const-string v13, "CELL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_54a

    .line 566
    const/4 v7, 0x2

    goto :goto_513

    .line 567
    :cond_54a
    const-string v13, "PAGER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_554

    .line 568
    const/4 v7, 0x6

    goto :goto_513

    .line 569
    :cond_554
    const-string v13, "FAX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_55e

    .line 570
    const/4 v6, 0x1

    goto :goto_513

    .line 571
    :cond_55e
    const-string v13, "VOICE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_513

    const-string v13, "MSG"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_513

    .line 576
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "X-"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_583

    if-gez v7, :cond_583

    .line 578
    const/4 v7, 0x0

    .line 579
    const/4 v9, 0x2

    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v9           #label:Ljava/lang/String;
    move-result-object v9

    .restart local v9       #label:Ljava/lang/String;
    goto :goto_513

    .line 580
    :cond_583
    if-gez v7, :cond_513

    .line 582
    const/4 v7, 0x0

    .line 583
    move-object v9, v12

    goto :goto_513

    .line 587
    .end local v12           #typeString:Ljava/lang/String;
    :cond_588
    if-gez v7, :cond_58b

    .line 588
    const/4 v7, 0x1

    .line 590
    :cond_58b
    if-eqz v6, :cond_595

    .line 591
    const/16 p0, 0x1

    move v0, v7

    move/from16 v1, p0

    if-ne v0, v1, :cond_5b5

    .line 592
    .end local p0           #i$:Ljava/util/Iterator;
    const/4 v7, 0x5

    .line 598
    :cond_595
    :goto_595
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    move-object v0, v5

    move v1, v7

    move-object/from16 v2, p0

    move-object v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/syncml/pim/vcard/ContactStruct;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move v10, v8

    .end local v8           #prefIsSetPhone:Z
    .local v10, prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .local v12, xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    move v8, v15

    .line 599
    .end local v15           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    goto/16 :goto_75

    .line 593
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .end local p0           #fullName:Ljava/lang/String;
    .local v6, isFax:Z
    .local v7, type:I
    .local v8, prefIsSetPhone:Z
    .local v9, label:Ljava/lang/String;
    .local v10, isPrimary:Z
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    :cond_5b5
    const/16 p0, 0x3

    move v0, v7

    move/from16 v1, p0

    if-ne v0, v1, :cond_595

    .line 594
    const/4 v7, 0x4

    goto :goto_595

    .line 599
    .end local v6           #isFax:Z
    .end local v7           #type:I
    .end local v8           #prefIsSetPhone:Z
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .restart local v22       #prefIsSetPhone:Z
    .local p0, name:Ljava/lang/String;
    :cond_5be
    const-string v6, "NOTE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e9

    .line 600
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    move-object/from16 p0, v0

    .end local p0           #name:Ljava/lang/String;
    iget-object v6, v11, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .local v9, prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .local v8, prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .local v10, prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .local v7, prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .local v6, nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 601
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_5e9
    const-string v6, "BDAY"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60a

    .line 602
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 603
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_60a
    const-string v6, "URL"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62b

    .line 604
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 605
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_62b
    const-string v6, "REV"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64c

    .line 607
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 608
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_64c
    const-string v6, "UID"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66d

    .line 609
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 610
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_66d
    const-string v6, "KEY"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68e

    .line 612
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 613
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_68e
    const-string v6, "MAILER"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6af

    .line 614
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 615
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_6af
    const-string v6, "TZ"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d0

    .line 616
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 617
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_6d0
    const-string v6, "GEO"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f1

    .line 618
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 619
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_6f1
    const-string v6, "NICKNAME"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_712

    .line 621
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 622
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_712
    const-string v6, "CLASS"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_733

    .line 625
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 626
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_733
    const-string v6, "PROFILE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_754

    .line 628
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 629
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_754
    const-string v6, "CATEGORIES"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_775

    .line 632
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 633
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_775
    const-string v6, "SOURCE"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_796

    .line 635
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 636
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_796
    const-string v6, "PRODID"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b7

    .line 640
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 641
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_7b7
    const-string v6, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7da

    .line 642
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local p0, xPhoneticFirstName:Ljava/lang/String;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, p0

    .end local p0           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 643
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_7da
    const-string v6, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7fd

    .line 644
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, xPhoneticMiddleName:Ljava/lang/String;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, p0

    .end local p0           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 645
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    .local p0, name:Ljava/lang/String;
    :cond_7fd
    const-string v6, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #name:Ljava/lang/String;
    if-eqz p0, :cond_820

    .line 646
    move-object v0, v11

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 p0, v0

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .local p0, xPhoneticLastName:Ljava/lang/String;
    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, p0

    .end local p0           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .local p0, fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 649
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .end local p0           #fullName:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    :cond_820
    invoke-virtual {v5, v11}, Landroid/syncml/pim/vcard/ContactStruct;->addExtension(Landroid/syncml/pim/PropertyNode;)V

    move/from16 v9, v21

    .end local v21           #prefIsSetOrganization:Z
    .restart local v9       #prefIsSetOrganization:Z
    move v8, v15

    .end local v15           #prefIsSetEmail:Z
    .restart local v8       #prefIsSetEmail:Z
    move/from16 v10, v22

    .end local v22           #prefIsSetPhone:Z
    .restart local v10       #prefIsSetPhone:Z
    move/from16 v7, v20

    .end local v20           #prefIsSetAddress:Z
    .restart local v7       #prefIsSetAddress:Z
    move-object/from16 v12, v24

    .end local v24           #xPhoneticLastName:Ljava/lang/String;
    .restart local v12       #xPhoneticLastName:Ljava/lang/String;
    move-object/from16 v13, v25

    .end local v25           #xPhoneticMiddleName:Ljava/lang/String;
    .restart local v13       #xPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v11, v23

    .end local v23           #xPhoneticFirstName:Ljava/lang/String;
    .local v11, xPhoneticFirstName:Ljava/lang/String;
    move-object/from16 v6, v19

    .end local v19           #nameFromNProperty:Ljava/lang/String;
    .restart local v6       #nameFromNProperty:Ljava/lang/String;
    move-object/from16 p0, v17

    .end local v17           #fullName:Ljava/lang/String;
    .restart local p0       #fullName:Ljava/lang/String;
    goto/16 :goto_75

    .line 653
    .end local v6           #nameFromNProperty:Ljava/lang/String;
    .end local v7           #prefIsSetAddress:Z
    .end local v8           #prefIsSetEmail:Z
    .end local v9           #prefIsSetOrganization:Z
    .end local v10           #prefIsSetPhone:Z
    .end local v11           #xPhoneticFirstName:Ljava/lang/String;
    .end local v12           #xPhoneticLastName:Ljava/lang/String;
    .end local v13           #xPhoneticMiddleName:Ljava/lang/String;
    .end local p0           #fullName:Ljava/lang/String;
    .restart local v15       #prefIsSetEmail:Z
    .restart local v17       #fullName:Ljava/lang/String;
    .restart local v19       #nameFromNProperty:Ljava/lang/String;
    .restart local v20       #prefIsSetAddress:Z
    .restart local v21       #prefIsSetOrganization:Z
    .restart local v22       #prefIsSetPhone:Z
    .restart local v23       #xPhoneticFirstName:Ljava/lang/String;
    .restart local v24       #xPhoneticLastName:Ljava/lang/String;
    .restart local v25       #xPhoneticMiddleName:Ljava/lang/String;
    :cond_836
    if-eqz v17, :cond_945

    .line 654
    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    .line 661
    :goto_83d
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move-object/from16 p0, v0

    if-nez p0, :cond_87e

    if-nez v23, :cond_84a

    if-nez v25, :cond_84a

    if-eqz v24, :cond_87e

    .line 668
    :cond_84a
    const/16 p0, 0x1

    move/from16 v0, p1

    move/from16 v1, p0

    if-ne v0, v1, :cond_957

    .line 669
    move-object/from16 p0, v24

    .line 670
    .local p0, first:Ljava/lang/String;
    move-object/from16 p1, v23

    .local p1, second:Ljava/lang/String;
    move-object/from16 v6, p1

    .end local p1           #second:Ljava/lang/String;
    .local v6, second:Ljava/lang/String;
    move-object/from16 p1, p0

    .line 675
    .end local p0           #first:Ljava/lang/String;
    .local p1, first:Ljava/lang/String;
    :goto_85a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local p0, builder:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_864

    .line 677
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_864
    if-eqz v25, :cond_86d

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_86d
    if-eqz v6, :cond_875

    .line 683
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_875
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    .line 692
    .end local v6           #second:Ljava/lang/String;
    .end local p1           #first:Ljava/lang/String;
    :cond_87e
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move-object/from16 p0, v0

    if-eqz p0, :cond_893

    .line 693
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move-object/from16 p0, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    .line 697
    :cond_893
    if-nez v22, :cond_8bc

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    move-object/from16 p0, v0

    if-eqz p0, :cond_8bc

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    move-object/from16 p0, v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8bc

    .line 700
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;

    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    .line 703
    :cond_8bc
    if-nez v20, :cond_8ea

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 p0, v0

    if-eqz p0, :cond_8ea

    .line 704
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 p0, v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :cond_8ce
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_8ea

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 705
    .local p0, contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8ce

    .line 706
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    .line 711
    .end local p0           #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local p1           #i$:Ljava/util/Iterator;
    :cond_8ea
    if-nez v15, :cond_918

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 p0, v0

    if-eqz p0, :cond_918

    .line 712
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 p0, v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .restart local p1       #i$:Ljava/util/Iterator;
    :cond_8fc
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_918

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 713
    .restart local p0       #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8fc

    .line 714
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    .line 719
    .end local p0           #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local p1           #i$:Ljava/util/Iterator;
    :cond_918
    if-nez v21, :cond_941

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    move-object/from16 p0, v0

    if-eqz p0, :cond_941

    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    move-object/from16 p0, v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_941

    .line 722
    move-object v0, v5

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;

    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->isPrimary:Z

    :cond_941
    move-object/from16 p0, v5

    .line 725
    goto/16 :goto_16

    .line 655
    .local p1, nameOrderType:I
    :cond_945
    if-eqz v19, :cond_94e

    .line 656
    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    goto/16 :goto_83d

    .line 658
    :cond_94e
    const-string p0, ""

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    goto/16 :goto_83d

    .line 672
    :cond_957
    move-object/from16 p0, v23

    .line 673
    .local p0, first:Ljava/lang/String;
    move-object/from16 p1, v24

    .local p1, second:Ljava/lang/String;
    move-object/from16 v6, p1

    .end local p1           #second:Ljava/lang/String;
    .restart local v6       #second:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #first:Ljava/lang/String;
    .local p1, first:Ljava/lang/String;
    goto/16 :goto_85a

    .end local v6           #second:Ljava/lang/String;
    .end local v21           #prefIsSetOrganization:Z
    .local v7, type:I
    .local v8, prefIsSetOrganization:Z
    .local v10, isPrimary:Z
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .local p0, i$:Ljava/util/Iterator;
    .local p1, nameOrderType:I
    :cond_961
    move v6, v8

    .end local v8           #prefIsSetOrganization:Z
    .local v6, prefIsSetOrganization:Z
    goto/16 :goto_316

    .end local v6           #prefIsSetOrganization:Z
    .restart local v8       #prefIsSetOrganization:Z
    :cond_964
    move v6, v8

    .end local v8           #prefIsSetOrganization:Z
    .restart local v6       #prefIsSetOrganization:Z
    goto/16 :goto_316

    .end local v20           #prefIsSetAddress:Z
    .local v6, kind:I
    .local v8, builder:Ljava/lang/StringBuilder;
    .local v9, label:Ljava/lang/String;
    .local v11, builderIsEmpty:Z
    .local v12, i:I
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #prefIsSetAddress:Z
    .restart local v16       #size:I
    .restart local v21       #prefIsSetOrganization:Z
    .local p0, addressPart:Ljava/lang/String;
    :cond_967
    move/from16 p0, v11

    .end local v11           #builderIsEmpty:Z
    .local p0, builderIsEmpty:Z
    goto/16 :goto_2dd

    .end local p0           #builderIsEmpty:Z
    .restart local v11       #builderIsEmpty:Z
    :cond_96b
    move/from16 p0, v11

    .end local v11           #builderIsEmpty:Z
    .restart local p0       #builderIsEmpty:Z
    move v11, v12

    .end local v12           #i:I
    .local v11, i:I
    goto/16 :goto_29c

    .end local v16           #size:I
    .local v11, builderIsEmpty:Z
    .restart local v12       #i:I
    .local p0, addressPart:Ljava/lang/String;
    :cond_970
    move/from16 p0, v11

    .end local v11           #builderIsEmpty:Z
    .local p0, builderIsEmpty:Z
    goto/16 :goto_293

    .end local v12           #i:I
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v8, typeString:Ljava/lang/String;
    .local v11, propertyNode:Landroid/syncml/pim/PropertyNode;
    .local p0, i$:Ljava/util/Iterator;
    :cond_974
    move v8, v14

    .end local v14           #prefIsSetAddress:Z
    .local v8, prefIsSetAddress:Z
    goto/16 :goto_1df

    .end local v6           #kind:I
    .end local v8           #prefIsSetAddress:Z
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .local v7, valuesAreAllEmpty:Z
    .restart local v20       #prefIsSetAddress:Z
    :cond_977
    move/from16 p0, v7

    .end local v7           #valuesAreAllEmpty:Z
    .local p0, valuesAreAllEmpty:Z
    goto/16 :goto_1b5
.end method

.method private static getNameFromNProperty(Ljava/util/List;I)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter "nameOrderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x1

    .line 234
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 235
    .local v4, size:I
    if-le v4, v6, :cond_a5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 239
    .local v1, builderIsEmpty:Z
    if-le v4, v10, :cond_2a

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 240
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/4 v1, 0x0

    .line 244
    :cond_2a
    if-ne p1, v6, :cond_98

    .line 245
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, first:Ljava/lang/String;
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 251
    .local v3, second:Ljava/lang/String;
    :goto_38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_47

    .line 252
    if-nez v1, :cond_43

    .line 253
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const/4 v1, 0x0

    .line 259
    :cond_47
    if-le v4, v9, :cond_64

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_64

    .line 260
    if-nez v1, :cond_5a

    .line 261
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_5a
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/4 v1, 0x0

    .line 266
    :cond_64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_73

    .line 267
    if-nez v1, :cond_6f

    .line 268
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_6f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/4 v1, 0x0

    .line 274
    :cond_73
    const/4 v5, 0x4

    if-le v4, v5, :cond_93

    const/4 v5, 0x4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_93

    .line 275
    if-nez v1, :cond_88

    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    :cond_88
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v1, 0x0

    .line 281
    :cond_93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #builderIsEmpty:Z
    .end local v2           #first:Ljava/lang/String;
    .end local v3           #second:Ljava/lang/String;
    :goto_97
    return-object v5

    .line 248
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #builderIsEmpty:Z
    .restart local p0       #elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .restart local v2       #first:Ljava/lang/String;
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3       #second:Ljava/lang/String;
    goto :goto_38

    .line 282
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #builderIsEmpty:Z
    .end local v2           #first:Ljava/lang/String;
    .end local v3           #second:Ljava/lang/String;
    :cond_a5
    if-ne v4, v6, :cond_af

    .line 283
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_97

    .line 285
    .restart local p0       #elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_af
    const-string v5, ""

    goto :goto_97
.end method

.method private pushIntoContentProviderOrResolver(Ljava/lang/Object;J)V
    .registers 42
    .parameter "contentSomething"
    .parameter "myContactsGroupId"

    .prologue
    .line 751
    const/16 v31, 0x0

    .line 752
    .local v31, resolver:Landroid/content/ContentResolver;
    const/16 v30, 0x0

    .line 753
    .local v30, provider:Landroid/content/AbstractSyncableContentProvider;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/content/ContentResolver;

    move/from16 v35, v0

    if-eqz v35, :cond_70

    .line 754
    move-object/from16 v0, p1

    check-cast v0, Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    .line 762
    :goto_12
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v35, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object v0, v7

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v35, "phonetic_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object v0, v7

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_b0

    .line 767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .local v5, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_87

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 769
    .local v15, note:Ljava/lang/String;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v35, "\n"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 755
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #note:Ljava/lang/String;
    :cond_70
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/content/AbstractSyncableContentProvider;

    move/from16 v35, v0

    if-eqz v35, :cond_7f

    .line 756
    move-object/from16 v0, p1

    check-cast v0, Landroid/content/AbstractSyncableContentProvider;

    move-object/from16 v30, v0

    goto :goto_12

    .line 758
    :cond_7f
    const-string v35, "ContactStruct"

    const-string v36, "Unsupported object came."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local p0
    .end local p1
    :cond_86
    :goto_86
    return-void

    .line 772
    .restart local v5       #builder:Ljava/lang/StringBuilder;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local p0
    .restart local p1
    :cond_87
    const-string v35, "notes"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object v0, v7

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local p1
    :cond_95
    :goto_95
    const-wide/16 v18, 0x0

    .line 779
    .local v18, personId:J
    if-eqz v31, :cond_db

    .line 780
    move-object/from16 v0, v31

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v20

    .line 782
    .local v20, personUri:Landroid/net/Uri;
    if-eqz v20, :cond_a6

    .line 783
    invoke-static/range {v20 .. v20}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 802
    :cond_a6
    :goto_a6
    if-nez v20, :cond_12b

    .line 803
    const-string v35, "ContactStruct"

    const-string v36, "Failed to create the contact."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 773
    .end local v18           #personId:J
    .end local v20           #personUri:Landroid/net/Uri;
    .restart local p1
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_95

    .line 774
    const-string v35, "notes"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 786
    .restart local v18       #personId:J
    :cond_db
    sget-object v35, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v20

    .line 787
    .restart local v20       #personUri:Landroid/net/Uri;
    if-eqz v20, :cond_a6

    .line 788
    invoke-static/range {v20 .. v20}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 789
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 790
    .local v34, values:Landroid/content/ContentValues;
    const-string v35, "person"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    const-string v35, "group_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    sget-object v35, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v32

    .line 794
    .local v32, resultUri:Landroid/net/Uri;
    if-nez v32, :cond_a6

    .line 795
    const-string v35, "ContactStruct"

    const-string v36, "Faild to insert the person to MyContact."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 797
    const/16 v20, 0x0

    goto/16 :goto_a6

    .line 807
    .end local v32           #resultUri:Landroid/net/Uri;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_12b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    move-object/from16 v35, v0

    if-eqz v35, :cond_144

    .line 808
    if-eqz v31, :cond_1d5

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    move-object/from16 v35, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 818
    :cond_144
    :goto_144
    const-wide/16 v28, -0x1

    .line 819
    .local v28, primaryPhoneId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_20f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_20f

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_164
    :goto_164
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_20f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;

    .line 821
    .local v21, phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 822
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v35, "type"

    move-object/from16 v0, v21

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->type:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    move-object/from16 v0, v21

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->type:I

    move/from16 v35, v0

    if-nez v35, :cond_197

    .line 824
    const-string v35, "label"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_197
    const-string v35, "number"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v35, "isprimary"

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v35, "person"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 833
    if-eqz v31, :cond_202

    .line 834
    sget-object v35, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 838
    .local v22, phoneUri:Landroid/net/Uri;
    :goto_1c4
    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    move/from16 v35, v0

    if-eqz v35, :cond_164

    .line 839
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    goto :goto_164

    .line 811
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    .end local v22           #phoneUri:Landroid/net/Uri;
    .end local v28           #primaryPhoneId:J
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_1d5
    const-string v35, "photo"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 812
    .local v23, photoUri:Landroid/net/Uri;
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 813
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v35, "data"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 814
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/AbstractSyncableContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_144

    .line 836
    .end local v23           #photoUri:Landroid/net/Uri;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v21       #phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    .restart local v28       #primaryPhoneId:J
    :cond_202
    sget-object v35, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .restart local v22       #phoneUri:Landroid/net/Uri;
    goto :goto_1c4

    .line 844
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    .end local v22           #phoneUri:Landroid/net/Uri;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_20f
    const-wide/16 v26, -0x1

    .line 845
    .local v26, primaryOrganizationId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2a5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_2a5

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_22f
    :goto_22f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_2a5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;

    .line 847
    .local v16, organizationData:Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 849
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v35, "type"

    move-object/from16 v0, v16

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->type:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v35, "company"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->companyName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v35, "title"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->positionName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v35, "isprimary"

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v35, "person"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 859
    if-eqz v31, :cond_298

    .line 860
    sget-object v35, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 865
    .local v17, organizationUri:Landroid/net/Uri;
    :goto_287
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->isPrimary:Z

    move/from16 v35, v0

    if-eqz v35, :cond_22f

    .line 866
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    goto :goto_22f

    .line 862
    .end local v17           #organizationUri:Landroid/net/Uri;
    :cond_298
    sget-object v35, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .restart local v17       #organizationUri:Landroid/net/Uri;
    goto :goto_287

    .line 871
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #organizationData:Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;
    .end local v17           #organizationUri:Landroid/net/Uri;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_2a5
    const-wide/16 v24, -0x1

    .line 872
    .local v24, primaryEmailId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_376

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_376

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_2c5
    :goto_2c5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_376

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 874
    .local v6, contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 875
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v35, "kind"

    move-object v0, v6

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v35, "type"

    move-object v0, v6

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->type:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    move-object v0, v6

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->type:I

    move/from16 v35, v0

    if-nez v35, :cond_303

    .line 878
    const-string v35, "label"

    move-object v0, v6

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_303
    const-string v35, "data"

    move-object v0, v6

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v35, "isprimary"

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    const-string v35, "person"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 884
    move-object v0, v6

    iget v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_35a

    .line 886
    if-eqz v31, :cond_34d

    .line 887
    sget-object v35, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 892
    .local v9, emailUri:Landroid/net/Uri;
    :goto_33c
    move-object v0, v6

    iget-boolean v0, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2c5

    .line 893
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    goto/16 :goto_2c5

    .line 889
    .end local v9           #emailUri:Landroid/net/Uri;
    :cond_34d
    sget-object v35, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .restart local v9       #emailUri:Landroid/net/Uri;
    goto :goto_33c

    .line 896
    .end local v9           #emailUri:Landroid/net/Uri;
    :cond_35a
    if-eqz v31, :cond_369

    .line 897
    sget-object v35, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2c5

    .line 899
    :cond_369
    sget-object v35, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2c5

    .line 906
    .end local v6           #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    move-object/from16 v35, v0

    if-eqz v35, :cond_41f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v35

    if-lez v35, :cond_41f

    .line 908
    if-eqz v31, :cond_3f3

    .line 909
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v8, contentValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_39f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_401

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 914
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 915
    .local v13, key:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 916
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3bb
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_39f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 917
    .local v33, value:Ljava/lang/String;
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 918
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v35, "name"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v35, "value"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v35, "person"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 921
    if-eqz v31, :cond_3f5

    .line 922
    move-object v0, v8

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3bb

    .line 911
    .end local v8           #contentValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v33           #value:Ljava/lang/String;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_3f3
    const/4 v8, 0x0

    .restart local v8       #contentValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    goto :goto_391

    .line 924
    .restart local v10       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #key:Ljava/lang/String;
    .restart local v14       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33       #value:Ljava/lang/String;
    .restart local v34       #values:Landroid/content/ContentValues;
    :cond_3f5
    sget-object v35, Landroid/provider/Contacts$Extensions;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3bb

    .line 928
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v33           #value:Ljava/lang/String;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_401
    if-eqz v31, :cond_41f

    .line 929
    sget-object v35, Landroid/provider/Contacts$Extensions;->CONTENT_URI:Landroid/net/Uri;

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v36, v0

    move-object v0, v8

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/content/ContentValues;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 934
    .end local v8           #contentValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_41f
    const-wide/16 v35, 0x0

    cmp-long v35, v28, v35

    if-gez v35, :cond_431

    const-wide/16 v35, 0x0

    cmp-long v35, v26, v35

    if-gez v35, :cond_431

    const-wide/16 v35, 0x0

    cmp-long v35, v24, v35

    if-ltz v35, :cond_86

    .line 935
    :cond_431
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .restart local v34       #values:Landroid/content/ContentValues;
    const-wide/16 v35, 0x0

    cmp-long v35, v28, v35

    if-ltz v35, :cond_445

    .line 937
    const-string v35, "primary_phone"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 939
    :cond_445
    const-wide/16 v35, 0x0

    cmp-long v35, v26, v35

    if-ltz v35, :cond_454

    .line 940
    const-string v35, "primary_organization"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    :cond_454
    const-wide/16 v35, 0x0

    cmp-long v35, v24, v35

    if-ltz v35, :cond_463

    .line 943
    const-string v35, "primary_email"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 945
    :cond_463
    if-eqz v31, :cond_478

    .line 946
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_86

    .line 948
    :cond_478
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_86
.end method


# virtual methods
.method public addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "kind"
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 156
    iget-object v1, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-nez v1, :cond_b

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    .line 159
    :cond_b
    new-instance v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;

    invoke-direct {v0}, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;-><init>()V

    .line 160
    .local v0, contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    iput p1, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    .line 161
    iput p2, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->type:I

    .line 162
    iput-object p3, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    .line 163
    iput-object p4, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    .line 164
    iput-boolean p5, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    .line 165
    iget-object v1, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public addExtension(Landroid/syncml/pim/PropertyNode;)V
    .registers 5
    .parameter "propertyNode"

    .prologue
    .line 213
    iget-object v2, p1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 230
    :goto_8
    return-void

    .line 218
    :cond_9
    iget-object v1, p1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 219
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    if-nez v2, :cond_16

    .line 220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    .line 222
    :cond_16
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_28
    invoke-virtual {p1}, Landroid/syncml/pim/PropertyNode;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 226
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_30
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_28
.end method

.method public addOrganization(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "type"
    .parameter "companyName"
    .parameter "positionName"
    .parameter "isPrimary"

    .prologue
    .line 173
    iget-object v1, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    if-nez v1, :cond_b

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    .line 176
    :cond_b
    new-instance v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;

    invoke-direct {v0}, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;-><init>()V

    .line 177
    .local v0, organizationData:Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;
    iput p1, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->type:I

    .line 178
    iput-object p2, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->companyName:Ljava/lang/String;

    .line 179
    iput-object p3, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->positionName:Ljava/lang/String;

    .line 180
    iput-boolean p4, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->isPrimary:Z

    .line 181
    iget-object v1, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 125
    iget-object v6, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-nez v6, :cond_b

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    .line 128
    :cond_b
    new-instance v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;

    invoke-direct {v4}, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;-><init>()V

    .line 129
    .local v4, phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    iput p1, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->type:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, trimed:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 134
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v3, :cond_3a

    .line 135
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 136
    .local v1, ch:C
    const/16 v6, 0x30

    if-gt v6, v1, :cond_2e

    const/16 v6, 0x39

    if-le v1, v6, :cond_34

    :cond_2e
    if-nez v2, :cond_37

    const/16 v6, 0x2b

    if-ne v1, v6, :cond_37

    .line 137
    :cond_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 140
    .end local v1           #ch:C
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    .line 141
    iput-object p3, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    .line 142
    iput-boolean p4, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    .line 143
    iget-object v6, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public displayString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 729
    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 730
    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    .line 746
    :goto_a
    return-object v3

    .line 732
    :cond_b
    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_35

    .line 733
    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 734
    .local v0, contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    iget v3, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    iget-boolean v3, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    if-eqz v3, :cond_1d

    .line 735
    iget-object v3, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    goto :goto_a

    .line 739
    .end local v0           #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_35
    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5a

    .line 740
    iget-object v3, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;

    .line 741
    .local v2, phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    iget-boolean v3, v2, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    if-eqz v3, :cond_47

    .line 742
    iget-object v3, v2, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    goto :goto_a

    .line 746
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #phoneData:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    :cond_5a
    const-string v3, ""

    goto :goto_a
.end method

.method public isIgnorable()Z
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_1c
    iget-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public pushIntoAbstractSyncableContentProvider(Landroid/content/AbstractSyncableContentProvider;J)V
    .registers 6
    .parameter "provider"
    .parameter "myContactsGroupId"

    .prologue
    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, successful:Z
    invoke-virtual {p1}, Landroid/content/AbstractSyncableContentProvider;->beginTransaction()V

    .line 968
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Landroid/syncml/pim/vcard/ContactStruct;->pushIntoContentProviderOrResolver(Ljava/lang/Object;J)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 969
    const/4 v0, 0x1

    .line 971
    invoke-virtual {p1, v0}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    .line 973
    return-void

    .line 971
    :catchall_c
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    throw v1
.end method

.method public pushIntoContentResolver(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "resolver"

    .prologue
    .line 957
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/syncml/pim/vcard/ContactStruct;->pushIntoContentProviderOrResolver(Ljava/lang/Object;J)V

    .line 958
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .registers 8
    .parameter "positionValue"

    .prologue
    .line 200
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    if-nez v2, :cond_b

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    .line 203
    :cond_b
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 204
    .local v1, size:I
    if-nez v1, :cond_1c

    .line 205
    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/syncml/pim/vcard/ContactStruct;->addOrganization(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 206
    const/4 v1, 0x1

    .line 208
    :cond_1c
    iget-object v2, p0, Landroid/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;

    .line 209
    .local v0, lastData:Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;
    iput-object p1, v0, Landroid/syncml/pim/vcard/ContactStruct$OrganizationData;->positionName:Ljava/lang/String;

    .line 210
    return-void
.end method
