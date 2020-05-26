Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C89F1E1BB6
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=82NB9lCPMwXynDeXK6u4yXJsBZGIDVjhoL3cA6mdRsQ=; b=jZGqMQqE2eP1WxgvVr3d7IbVN0
	iVX7sFwLHu6+dnbrc1j8K6mGR5MBqhZRcf9+yEK3QC5t3TCYvw5fWWuup8xz1pgcVAF0xlXzThDVt
	78IpRhDBj7dWntbbcbWiXT8oxPTfFMjqwx/t6/TVBwvjJZhcBai/6YVRw6ALDc2E6/QKCrYjPXHDz
	oCYKl8SB2ZcLccS6+b5gp6htagR1/JysOvjYHcJGX+NhL/TaIgCftVrvpuJfMvEyQiTaQc/ud1Cgg
	1IPgItTskA/N6dpeXStRYurhN3oJvsuGTzJ0Jflg0UcetBepPGd4/o+5I2QhtN33yedUUXMSRWGGe
	Cl1y4lGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTc2-0007Jn-Ct; Tue, 26 May 2020 07:02:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTby-0007IG-Py
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:02:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id bg4so2977411plb.3
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=82NB9lCPMwXynDeXK6u4yXJsBZGIDVjhoL3cA6mdRsQ=;
 b=FaftoKe+0VZVQZfx6UqrMrjEGKXsDAMQES+qIZJ2/T5sVpacKZTqHEKzYwPkn8u3Yn
 JKthoGXIp3ZuFeRPBM6tCVTFE1pvm/klC/QDuGmact9URjVXCTDaRzHQzGbV3nBoqTD+
 3Afh4Z2yD7rE+JgNq6Gkeqa1IW5gxkucbB+RIhQihixaToLipBJVA/OeTmsRhrehKSRN
 dGkDv15x2U1w9i9skTs3zr0XY28wbuxQy7ttu0tHLi6Ltu0Hu6kPXzOYpNRi71p44whN
 03MbhRIsC1i9Ha6mwACeLPzjD2RXAAN2ZJUvJeIhRpsNjl85Pq4LwXZlGmEJkjOt5bn6
 mkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=82NB9lCPMwXynDeXK6u4yXJsBZGIDVjhoL3cA6mdRsQ=;
 b=Os3Nu5GVU4ukqjB/DX1oIqBaVTpawcy6wk87qCK5detwpTAWmEYlBYhA4jhdqi7llO
 xbxhLphQAYuWY3yEKC3ToilDAoMCjWTw8kjb8BfDiwY8+sZA6iw0jrptPLBX7Vo2qgN8
 As/b7r4K3GVxS4VH0CvwpQY390O7IH68DRjaonTxCuF9lHHVUvw6lvMKQvvZffHwBwVr
 FlXywQ53TM90Ye38yHrtg2Si1lUc4M6HTZICINhLq61jAWVBO7Kfj2GEqGae7Sa28Ofx
 TqYkg9i9ohJtlx/wKzs4/ALudS0EsfNcnIWFT02uMG1i7RUg63DJUBlfYfn1BqVSlxv/
 NTkA==
X-Gm-Message-State: AOAM533nCNqk0aCuxG9gacfyTjAfO+hYACxPfMIJcJa4Ef4JSLP3Qhzg
 aUrXQwS+4E6C9F2YbMr/3Nb2Hw==
X-Google-Smtp-Source: ABdhPJyVEh5eCMuVwWRIqvOS5Rmwcsk10fGY/pssgC0u8rfLvDwccBtBh6NrYpEaRpu5pP8FSWPp2A==
X-Received: by 2002:a17:902:bb86:: with SMTP id
 m6mr31111794pls.341.1590476574044; 
 Tue, 26 May 2020 00:02:54 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:02:53 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 02/13] riscv: Separate patch for cflags and aflags
Date: Tue, 26 May 2020 15:02:31 +0800
Message-Id: <0c949212bff708dcbd530bfd7c13a04a2ca2bbd8.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000254_836616_76836A62 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.26.2


