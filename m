Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F1E123182
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 17:16:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lq0HcHWIMCgqvJzEZbp3mJOsXRN3LKD9caHPebRuGeU=; b=orl1uJNwYvJjhy
	EBBEVCw9dwc6485PF4YW2z1NLQRVyJTY9QohwBawxbpo4GViRBSf0wdL0LKihWmSc1lFKv3Y6iy2v
	VJG6OY0DE7mvJzHPeH1QUBM2P1L6ZjvStLZKDk1jOkpgwnPSGHHqPN29EiusE0uQtrymwVe2UKmzE
	VC3Nf+uqtT464/tYLXixK0oyfUJEAnFIwwBU8GdxB/DqM2KW0DImzIyZGVOJqpAqM7Zl2f3KhCm++
	cZw4MhFNR+oKVx9ZC2k2XQ7I6lQoAlWnUcOmGLjPTN+ulUQy0XUKMG5K0IkL+AvxgPYAaYS/tl/UJ
	wwRrPZttq+vajr0/Txdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFVs-0008Ms-Cn; Tue, 17 Dec 2019 16:15:56 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFVo-0008LW-Ui
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 16:15:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so3704460plt.2
 for <linux-riscv@lists.infradead.org>; Tue, 17 Dec 2019 08:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lq0HcHWIMCgqvJzEZbp3mJOsXRN3LKD9caHPebRuGeU=;
 b=TSOQzXTVXZSWk9OszZ/sCsCMkt3LTf/VsXDey6HzUEm6QwmwWfOY8B5IWA/ULn2KxT
 99V2PSDIGgI5gGw8XY9AnR4lLrS8SfpTf4BHI3j/kDvxFEVAl0HufaUe1yXHP+foIann
 Ls/PThfLv6bfotH1OL5b2V6wg1LsEFvZacF9OxkLCeYBF/MTlPEnhsfHmIe19v1s7j6D
 r08r6m0yEJYAYUNE9KqcvCVxcexr7Fc4U3+Vy8k/o8Qo2Egw0YOU+woxUpUzgJL3y+EZ
 To6Xc0bfIKrUMwJoY2vF2UjnDjxb1EeQI7cGYwqKVJmUh8QSMQY7tySGlb3mK6+vF08I
 JY/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lq0HcHWIMCgqvJzEZbp3mJOsXRN3LKD9caHPebRuGeU=;
 b=Ln11FDTNradDJBKHItbwczaMXgta0z+8UCHjIS+GtMKX6NPF5M6jG53tIZL4w3GtrM
 s2R/RGrqNPOpUBhf8B/DZ84dRDy3urKL2oTNiQ2C56SSrdtMpM9IOeSuWjf7+H+hxB5M
 dg9mmdasCUMSGVJXA4M9ZBN/Hhsfu9d34eEy9FrmMzdOLTP769Mn9PGU1cCZsWD1+pXc
 ZcklyLMk9Slm+TJbP9GPRzynXrTpbw7Im2bdzg2lr94zuRnd9WuAAfmcxqeadDiMl+DE
 HHIpOSTa/ZBZGkVCtQh58seU3BspvCIS+e6DfONAwKXhxZ07PqGu9SdV3dKonZKt05wU
 B3vQ==
X-Gm-Message-State: APjAAAW2FeA4RsPIKcVDj+5oBjNGdXxnDjkILC1sesaic88thOl0Arcp
 /V8aKk3QdpCBjCDdRm/y3Zws921aoEreIA==
X-Google-Smtp-Source: APXvYqw79bI0EywMb+ripBKRFTsDY6bo0dkGi+Xw0p9N1XSqBcwqziIpHlugv7M3PHqtqjc20gvGdA==
X-Received: by 2002:a17:902:8c96:: with SMTP id
 t22mr24059076plo.288.1576599351177; 
 Tue, 17 Dec 2019 08:15:51 -0800 (PST)
Received: from glados.lan ([2601:647:4c01:6541:fa16:54ff:fed1:1bd6])
 by smtp.gmail.com with ESMTPSA id k15sm27704122pfg.37.2019.12.17.08.15.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 08:15:50 -0800 (PST)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org
Subject: [PATCH v2 1/3] kconfig: list all definitions of a symbol in help text
Date: Tue, 17 Dec 2019 08:15:43 -0800
Message-Id: <351ce34a887733d966b4822ac9f831e68a5a16f6.1576599202.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1576599202.git.tommyhebb@gmail.com>
References: <cover.1576599202.git.tommyhebb@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_081552_997947_F4EE8C0F 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tommyhebb[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Thomas Hebb <tommyhebb@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In Kconfig, each symbol (representing a config option) can be defined in
multiple places. Each definition may or may not have a prompt, which
allows the option to be set via an interface like menuconfig. Each
definition has a set of dependencies, which determine whether its prompt
is visible and whether other pieces of the definition, like a default
value, take effect.

Historically, a symbol's help text (i.e. what's shown when a user
presses '?' in menuconfig) contained some symbol-wide information not
tied to any particular definition (e.g. what other symbols it selects)
as well as the location (file name and line number) and dependencies of
each prompt. Notably, the help text did not show the location or
dependencies of definitions without prompts.

Because this made it hard to reason about symbols that had no prompts,
commit bcdedcc1afd6 ("menuconfig: print more info for symbol without
prompts") changed the help text so that, instead of containing the
location and dependencies of each prompt, it contained the location and
dependencies of the symbol's first definition, regardless of whether or
not that definition had a prompt.

For symbols with only one definition, that change makes sense. However,
it breaks down for symbols with multiple definitions: each definition
has its own set of dependencies (the `dep` field of `struct menu`), and
those dependencies are ORed together to get the symbol's dependency list
(the `dir_dep` field of `struct symbol`). By printing only the
dependencies of the first definition, the help text misleads users into
believing that an option is more narrowly-applicable than it actually
is.

For an extreme example of this, we can look at the SYS_TEXT_BASE symbol
in the Das U-Boot project (version 2019.10), which also uses Kconfig. (I
unfortunately could not find an illustrative example in Linux.) This
config option specifies the load address of the built binary and, as
such, is applicable to basically every configuration possible. And yet,
without this patch, its help text is as follows:

  Symbol: SYS_TEXT_BASE [=]
  Type  : hex
  Prompt: U-Boot base address
    Location:
      -> ARM architecture
  Prompt: Text Base
    Location:
      -> Boot images
    Defined at arch/arm/mach-aspeed/Kconfig:9
    Depends on: ARM [=n] && ARCH_ASPEED [=n]

The help text indicates that the option is applicable only for a
specific unselected architecture (aspeed), because that architecture's
promptless definition (which just sets a default value), happens to be
the first one seen. No definition or dependency information is printed
for either of the two prompts listed.

Because source locations and dependencies are fundamentally properties
of definitions and not of symbols, we should treat them as such. This
patch brings back the pre-bcdedcc1afd6 behavior for definitions with
prompts but also separately prints the location and dependencies of
those without prompts, solving the original problem in a different way.
With this change, our SYS_TEXT_BASE example becomes

   Symbol: SYS_TEXT_BASE [=]
   Type  : hex
   Defined at arch/arm/mach-stm32mp/Kconfig:83
     Prompt: U-Boot base address
     Depends on: ARM [=n] && ARCH_STM32MP [=n]
     Location:
       -> ARM architecture
   Defined at Kconfig:532
     Prompt: Text Base
     Depends on: !NIOS2 [=n] && !XTENSA [=n] && !EFI_APP [=n]
     Location:
       -> Boot images
   Defined at arch/arm/mach-aspeed/Kconfig:9
     Depends on: ARM [=n] && ARCH_ASPEED [=n]
   Defined  at arch/arm/mach-socfpga/Kconfig:25
     Depends on: ARM [=n] && ARCH_SOCFPGA [=n]
   <snip>
   Defined at board/sifive/fu540/Kconfig:15
     Depends on: RISCV [=n] && TARGET_SIFIVE_FU540 [=n]

which is a much more accurate representation.

Note that there is one notable difference between what gets printed for
prompts after this change and what got printed before bcdedcc1afd6: the
"Depends on" line now accurately represents the prompt's dependencies
instead of conflating those with the prompt's visibility (which can
include extra conditions). See the patch later in this series titled
"kconfig: distinguish between dependencies and visibility in help text"
for more details and better handling of that nuance.

Signed-off-by: Thomas Hebb <tommyhebb@gmail.com>
---

Changes in v2:
- Added explicit U-Boot version in commit message + other rewordings
- Made the new "Depends on:" line print actual dependencies instead of
  visibility to avoid an intra-series regression, and noted that in the
  commit message.
- Get rid of redundant "with prompt" and "without prompt" notes in
  definition text, but continue to ensure that definitions with prompts
  are printed before ones without.

 scripts/kconfig/menu.c | 55 ++++++++++++++++++++++++------------------
 1 file changed, 31 insertions(+), 24 deletions(-)

diff --git a/scripts/kconfig/menu.c b/scripts/kconfig/menu.c
index d9d16469859a..0e54632d2043 100644
--- a/scripts/kconfig/menu.c
+++ b/scripts/kconfig/menu.c
@@ -698,6 +698,21 @@ const char *menu_get_help(struct menu *menu)
 		return "";
 }
 
+static void get_def_str(struct gstr *r, struct menu *menu)
+{
+	str_printf(r, "Defined at %s:%d\n",
+		   menu->file->name, menu->lineno);
+}
+
+static void get_dep_str(struct gstr *r, struct expr *expr, const char *prefix)
+{
+	if (!expr_is_yes(expr)) {
+		str_append(r, prefix);
+		expr_gstr_print(expr, r);
+		str_append(r, "\n");
+	}
+}
+
 static void get_prompt_str(struct gstr *r, struct property *prop,
 			   struct list_head *head)
 {
@@ -705,7 +720,9 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	struct menu *submenu[8], *menu, *location = NULL;
 	struct jump_key *jump = NULL;
 
-	str_printf(r, "Prompt: %s\n", prop->text);
+	str_printf(r, "  Prompt: %s\n", prop->text);
+
+	get_dep_str(r, prop->menu->dep, "  Depends on: ");
 	menu = prop->menu->parent;
 	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent) {
 		bool accessible = menu_is_visible(menu);
@@ -755,18 +772,6 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	}
 }
 
-/*
- * get property of type P_SYMBOL
- */
-static struct property *get_symbol_prop(struct symbol *sym)
-{
-	struct property *prop = NULL;
-
-	for_all_properties(sym, prop, P_SYMBOL)
-		break;
-	return prop;
-}
-
 static void get_symbol_props_str(struct gstr *r, struct symbol *sym,
 				 enum prop_type tok, const char *prefix)
 {
@@ -806,17 +811,19 @@ static void get_symbol_str(struct gstr *r, struct symbol *sym,
 			}
 		}
 	}
-	for_all_prompts(sym, prop)
-		get_prompt_str(r, prop, head);
-
-	prop = get_symbol_prop(sym);
-	if (prop) {
-		str_printf(r, "  Defined at %s:%d\n", prop->menu->file->name,
-			prop->menu->lineno);
-		if (!expr_is_yes(prop->visible.expr)) {
-			str_append(r, "  Depends on: ");
-			expr_gstr_print(prop->visible.expr, r);
-			str_append(r, "\n");
+
+	/* Print the definitions with prompts before the ones without */
+	for_all_properties(sym, prop, P_SYMBOL) {
+		if (prop->menu->prompt) {
+			get_def_str(r, prop->menu);
+			get_prompt_str(r, prop->menu->prompt, head);
+		}
+	}
+
+	for_all_properties(sym, prop, P_SYMBOL) {
+		if (!prop->menu->prompt) {
+			get_def_str(r, prop->menu);
+			get_dep_str(r, prop->menu->dep, "  Depends on: ");
 		}
 	}
 
-- 
2.24.1


