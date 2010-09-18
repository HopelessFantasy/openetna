.class public Lcom/lge/sns/profile/Profile;
.super Lcom/lge/sns/profile/ProfileListItem;
.source "Profile.java"


# static fields
.field public static final DEFAULT_ID:J


# instance fields
.field private activities:Ljava/lang/String;

.field private affiliations:Ljava/lang/String;

.field private birthDateTime:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private commentListUpdated:Ljava/util/Date;

.field private email:Ljava/lang/String;

.field private followerCount:I

.field private followingCount:I

.field private friendCount:I

.field private gender:Ljava/lang/String;

.field private hometown:Ljava/lang/String;

.field private interests:Ljava/lang/String;

.field private music:Ljava/lang/String;

.field private otherPhoneNumber:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private politics:Ljava/lang/String;

.field private profileUpdated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/lge/sns/profile/ProfileListItem;-><init>()V

    .line 248
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Date;Ljava/util/Date;)V
    .registers 37
    .parameter "id"
    .parameter "snsId"
    .parameter "userId"
    .parameter "userName"
    .parameter "displayName"
    .parameter "avatarLink"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "otherPhoneNumber"
    .parameter "gender"
    .parameter "status"
    .parameter "birthDateTime"
    .parameter "birthday"
    .parameter "hometown"
    .parameter "politics"
    .parameter "interests"
    .parameter "activities"
    .parameter "music"
    .parameter "affiliations"
    .parameter "followerCount"
    .parameter "followingCount"
    .parameter "friendCount"
    .parameter "profileUpdated"
    .parameter "commentListUpdated"

    .prologue
    .line 226
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/lge/sns/profile/ProfileListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->email:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->phoneNumber:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->otherPhoneNumber:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->gender:Ljava/lang/String;

    .line 231
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->birthDateTime:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->birthday:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->hometown:Ljava/lang/String;

    .line 234
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->politics:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->interests:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->activities:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->music:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->affiliations:Ljava/lang/String;

    .line 239
    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/lge/sns/profile/Profile;->followerCount:I

    .line 240
    move/from16 v0, p22

    move-object v1, p0

    iput v0, v1, Lcom/lge/sns/profile/Profile;->followingCount:I

    .line 241
    move/from16 v0, p23

    move-object v1, p0

    iput v0, v1, Lcom/lge/sns/profile/Profile;->friendCount:I

    .line 242
    move-object/from16 v0, p24

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->profileUpdated:Ljava/util/Date;

    .line 243
    move-object/from16 v0, p25

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/Profile;->commentListUpdated:Ljava/util/Date;

    .line 244
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 251
    instance-of v2, p1, Lcom/lge/sns/profile/Profile;

    if-eqz v2, :cond_28

    .line 252
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/profile/Profile;

    move-object v1, v0

    .line 253
    .local v1, p:Lcom/lge/sns/profile/Profile;
    invoke-virtual {p0}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    .line 255
    .end local v1           #p:Lcom/lge/sns/profile/Profile;
    :goto_25
    return v2

    .line 253
    .restart local v1       #p:Lcom/lge/sns/profile/Profile;
    :cond_26
    const/4 v2, 0x0

    goto :goto_25

    .line 255
    .end local v1           #p:Lcom/lge/sns/profile/Profile;
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_25
.end method

.method public getActivities()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliations()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->affiliations:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDateTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->birthDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentListUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->commentListUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerCount()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/lge/sns/profile/Profile;->followerCount:I

    return v0
.end method

.method public getFollowingCount()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/lge/sns/profile/Profile;->followingCount:I

    return v0
.end method

.method public getFriendCount()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/lge/sns/profile/Profile;->friendCount:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHometown()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->interests:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->music:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->otherPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPolitics()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->politics:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/sns/profile/Profile;->profileUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public setActivities(Ljava/lang/String;)V
    .registers 2
    .parameter "activities"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->activities:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setAffiliations(Ljava/lang/String;)V
    .registers 2
    .parameter "affiliations"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->affiliations:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setBirthDateTime(Ljava/lang/String;)V
    .registers 2
    .parameter "birthDateTime"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->birthDateTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2
    .parameter "birthday"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->birthday:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setCommentListUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "commentListUpdated"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->commentListUpdated:Ljava/util/Date;

    .line 215
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->email:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFollowerCount(I)V
    .registers 2
    .parameter "followerCount"

    .prologue
    .line 170
    iput p1, p0, Lcom/lge/sns/profile/Profile;->followerCount:I

    .line 171
    return-void
.end method

.method public setFollowingCount(I)V
    .registers 2
    .parameter "followingCount"

    .prologue
    .line 181
    iput p1, p0, Lcom/lge/sns/profile/Profile;->followingCount:I

    .line 182
    return-void
.end method

.method public setFriendCount(I)V
    .registers 2
    .parameter "friendCount"

    .prologue
    .line 192
    iput p1, p0, Lcom/lge/sns/profile/Profile;->friendCount:I

    .line 193
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2
    .parameter "gender"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->gender:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setHometown(Ljava/lang/String;)V
    .registers 2
    .parameter "hometown"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->hometown:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .registers 2
    .parameter "interests"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->interests:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setMusic(Ljava/lang/String;)V
    .registers 2
    .parameter "music"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->music:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setOtherPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "otherPhoneNumber"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->otherPhoneNumber:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->phoneNumber:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
    .registers 2
    .parameter "politics"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->politics:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setProfileUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "profileUpdated"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lge/sns/profile/Profile;->profileUpdated:Ljava/util/Date;

    .line 204
    return-void
.end method
