Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D471F7463
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TqEeZZCFAo9j2EFFuYpPOcmAMjD+t0h5vXYjlCC88NI=; b=E+OCc3J8I6/AfWDVxushZBFIIw
	VS2ePZSypHPnVaGMlnklwxnJ8ARo6AxYOvKgQprehwg+PEC0XxFX7HOadlzIWCLhOJZ9heUFEh4hF
	ys2SvwXx8Bwsx45qC8Fz/hkr/q1TEs1z/3HODSGR6OYslzwvSyQcgSQ/+FMRNIJcT0JoCQzEsftpp
	KYFOQvpbPuSUE0D0sSUJTC9WHQQsyq5f8p101aiGk4k5H/FnXj5ELC4WPpjx81Zj6wbSYVH2q+Di/
	/o2LjEJKUbZLKUUt1UWwC1tvZpt4MavPtSEsJ0az0285v+JM1bxmww0lbYeu08a8No6VmyNsqoDXq
	WJsEUTEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpV-00054p-Qv; Fri, 12 Jun 2020 07:10:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpP-000503-Ke
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id d66so3878700pfd.6
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TqEeZZCFAo9j2EFFuYpPOcmAMjD+t0h5vXYjlCC88NI=;
 b=Vk8nXv4lbi60VdlETy0d9EHMvCMv6fvKZN7WSJqO8Yazl8SmgsXXBVnpEdhhbfA6U6
 IsRjgiXT1RcyvifqbfANAKXfWf9zgSjGNNC8zwH2SOwquvk0yPTzl/bgCFuQvzFqJVyx
 T/QnIAE8JHW27tQv2laLYiXgPZnqbMeTEMiE2nvFH+fCSSAfZjuwOK4wkAmNt3J4egyL
 gktCEfFKGLc2yAws1DCe3q7msFiIg+t0pCeXmtIz1dc3lyIA1jA4hgQBOWSVnW1zVIaZ
 xRD8wy6R1sSLyOKQ3EMRr9OAKnrmjNq17Y7jyMTfEQM9LNMIv38SwTMU/MwVxNnmXpwG
 mlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TqEeZZCFAo9j2EFFuYpPOcmAMjD+t0h5vXYjlCC88NI=;
 b=sg3nozIJId5yPQorYsZxv3Lhh+3dCYGWgK7bOFI0sQPf7DNbaWt5oXCHuEmJa22ExS
 QAeUCSvhdNJXaymHxt0miDlF76R4mu0oB93uTbf8PpD4CVzc2fwuDa8S17iEpwGuVEYH
 66fyScCSIRLiVyAWfn4q/oRxWwi68NQ9JAYY3BRo1xs5l50S0WeL2p4yjAdC3f3D8N3t
 jxWHc7E9h5ky/XpOYspGbResweuJFOfrN9ERIdO6pZ5dL3TugthuTC6vE0ySesP31Y1M
 c2+gMF1MhabrrZPuAzkVE9pOGyus+4caUMZzMWd6NB0eassC8dvxPUTHgB1qvJPowzqG
 hHow==
X-Gm-Message-State: AOAM531jfZs4ezoZz6j4tt7ZUhWE/KYbyS8glMpUkblAg9WA5qo9J+u9
 Vm7zxV2950lt490B6n9cAKUObw==
X-Google-Smtp-Source: ABdhPJyjEH+ADL2W4THCxsHXC9WxaaeveHWyMCLC47yacVreM5QB1kMYVKztlYuLn7XFuwTbzNN8eQ==
X-Received: by 2002:a62:7b41:: with SMTP id w62mr9986107pfc.142.1591945814828; 
 Fri, 12 Jun 2020 00:10:14 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:14 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 02/13] riscv: Separate patch for cflags and aflags
Date: Fri, 12 Jun 2020 15:09:51 +0800
Message-Id: <fb337ff3ed0f6d04da25f45db3c5c7713824ab13.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001015_707699_3D574AF2 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

From: Guo Ren <ren_guo@c-sky.com>

Use "subst fd" in Makefile is a hack way and it's not convenient
to add new ISA feature. Just separate them into riscv-march-cflags
and riscv-march-aflags.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/Makefile | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fb6e37db836d..957d064bead0 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -37,12 +37,18 @@ else
 endif
 
 # ISA string setting
-riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
-riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
-riscv-march-$(CONFIG_FPU)		:= $(riscv-march-y)fd
-riscv-march-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-y)c
-KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
-KBUILD_AFLAGS += -march=$(riscv-march-y)
+riscv-march-cflags-$(CONFIG_ARCH_RV32I)		:= rv32ima
+riscv-march-cflags-$(CONFIG_ARCH_RV64I)		:= rv64ima
+riscv-march-$(CONFIG_FPU)			:= $(riscv-march-y)fd
+riscv-march-cflags-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-cflags-y)c
+
+riscv-march-aflags-$(CONFIG_ARCH_RV32I)		:= rv32ima
+riscv-march-aflags-$(CONFIG_ARCH_RV64I)		:= rv64ima
+riscv-march-aflags-$(CONFIG_FPU)		:= $(riscv-march-aflags-y)fd
+riscv-march-aflags-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-aflags-y)c
+
+KBUILD_CFLAGS += -march=$(riscv-march-cflags-y)
+KBUILD_AFLAGS += -march=$(riscv-march-aflags-y)
 
 KBUILD_CFLAGS += -mno-save-restore
 KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
-- 
2.27.0


