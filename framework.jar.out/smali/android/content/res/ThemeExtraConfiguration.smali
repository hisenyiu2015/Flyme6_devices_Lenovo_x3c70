.class public Landroid/content/res/ThemeExtraConfiguration;
.super Ljava/lang/Object;
.source "ThemeExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_FLIPFONT:I = 0x20000000

.field private static final DEBUG:Z = false

.field public static final EXTRA_FONT_CHANGED:Ljava/lang/String; = "android.intent.extra.configuration.font_changed"

.field private static final SYSTEM_PROP_FONT_SCALE:Ljava/lang/String; = "persist.sys.font_scale"

.field private static final TAG:Ljava/lang/String; = "ThemeExtraConfiguration"

.field public static final THEME_FONT_NAME_INVALID:Ljava/lang/String; = ""

.field public static final THEME_FONT_PATH_INVALID:Ljava/lang/String; = ""

.field private static final THEME_SYSPROP_FONT_NAME:Ljava/lang/String; = "persist.sys.skin.fontname"

.field private static final THEME_SYSPROP_FONT_PATH:Ljava/lang/String; = "persist.sys.skin.fontpath"


# instance fields
.field public mFontName:Ljava/lang/String;

.field public mFontPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static freeAllCachesIfNeeded(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "configDiff"    # I

    .prologue
    .line 180
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 181
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 182
    return-void
.end method

.method public static getFontScale()F
    .locals 5

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "strValue":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 228
    .local v1, "fontScale":F
    const-string/jumbo v3, "persist.sys.font_scale"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 239
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getThemeFontName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    const-string/jumbo v1, "persist.sys.skin.fontname"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getThemeFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const-string/jumbo v1, "persist.sys.skin.fontpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public static handleConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;I)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "configDiff"    # I

    .prologue
    .line 185
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p1, p2}, Landroid/content/res/ThemeExtraConfiguration;->freeAllCachesIfNeeded(Landroid/content/res/Configuration;I)V

    .line 187
    invoke-static {}, Landroid/graphics/Typeface;->setThemeFont()V

    .line 189
    :cond_0
    return-void
.end method

.method public static isDefaultAndroidFont()Z
    .locals 6

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontPath()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "fontPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 246
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "fontName":Ljava/lang/String;
    const-string v4, "NotoSansHans-Regular.otf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 253
    .end local v1    # "fontFile":Ljava/io/File;
    .end local v2    # "fontName":Ljava/lang/String;
    :goto_0
    return v4

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ThemeExtraConfiguration"

    const-string/jumbo v5, "isDefaultAndroidFont exception !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "flag":Z
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method public static onActivityLaunch(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {}, Landroid/graphics/Typeface;->setThemeFont()V

    .line 203
    return-void
.end method

.method public static onConfigChanged(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p1, Landroid/content/res/Configuration;->mThemeExtraConfiguration:Landroid/content/res/ThemeExtraConfiguration;

    iget-object v0, v0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/ThemeExtraConfiguration;->setThemeFontPath(Ljava/lang/String;)V

    .line 175
    iget-object v0, p1, Landroid/content/res/Configuration;->mThemeExtraConfiguration:Landroid/content/res/ThemeExtraConfiguration;

    iget-object v0, v0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/ThemeExtraConfiguration;->setThemeFontName(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static setFontScale(F)V
    .locals 3
    .param p0, "fontScale"    # F

    .prologue
    .line 218
    :try_start_0
    const-string/jumbo v1, "persist.sys.font_scale"

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThemeExtraConfiguration"

    const-string/jumbo v2, "setFontScale exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setThemeFontName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v1, "ThemeExtraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThemeFontName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.fontname"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThemeExtraConfiguration"

    const-string/jumbo v2, "setThemeFontName exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setThemeFontPath(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v1, "ThemeExtraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThemeFontPath("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.fontpath"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThemeExtraConfiguration"

    const-string/jumbo v2, "setThemeFontPath exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateIntent(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "changes"    # I

    .prologue
    .line 208
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "android.intent.extra.configuration.font_changed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string v0, "ThemeExtraConfiguration"

    const-string v1, "It is a Theme Font changed Intent, Update it!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/ThemeExtraConfiguration;)I
    .locals 2
    .param p1, "extraconfiguration"    # Landroid/content/res/ThemeExtraConfiguration;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Landroid/content/res/ThemeExtraConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeExtraConfiguration;->compareTo(Landroid/content/res/ThemeExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/ThemeExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/ThemeExtraConfiguration;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 100
    .local v0, "i":I
    iget-object v1, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 107
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setTo(Landroid/content/res/ThemeExtraConfiguration;)V
    .locals 1
    .param p1, "extraconfiguration"    # Landroid/content/res/ThemeExtraConfiguration;

    .prologue
    .line 59
    iget-object v0, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 74
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    const-string v1, " THEMEUIFont("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/ThemeExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/ThemeExtraConfiguration;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    iget-object v1, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 84
    iget-object v1, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 85
    iget-object v1, p1, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 89
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/content/res/ThemeExtraConfiguration;->mFontName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void
.end method
