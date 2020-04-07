Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF7D1A0F96
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Quhy5/QZPA8/P4q/9fnjufmjHKuWjkZaQYF9/wabbVw=; b=RvM9wB1Gk70tGd
	yvzbZ5OcPIcCauabrp+ey32f1Wl1alwE2glFM5R9SI2D1oRJp1S0z25t5+5uuMrl+xjjZaQwq0gGw
	k0mrfFk5ONUdb3r9sS1+OI9lL62FpqCVRBXCbuj+88bVK1WVK4LkTaqWOhyDo9ccz/kVlCTMwf/lR
	eW3iq1S03enDP0cSwuS54DGAcCrWdzmozxQNia+gL4tpk4ER0BWtFGP1WN868S+d/n+p+LP0Oyg0A
	TO9c6MuXyZvEUvJCgBYsVWQ1ygBTQg9EdSOZuFzZ/fHz0C6jDpmkICkkytyh9asqsVAu3YERIu42i
	PyHOtLEJC2TFOKxYG48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVo-0006nk-Hf; Tue, 07 Apr 2020 14:47:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVR-0006NU-QJ
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id k191so1811334pgc.13
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Quhy5/QZPA8/P4q/9fnjufmjHKuWjkZaQYF9/wabbVw=;
 b=AHDDzmDiFHiECrdMx/1zHadC9VdetNvA12RpoCsdBdCEK14bBlGUUaj0dd2H3A+BCH
 L6TKBWsntI3ec6isKAfpwrdF8gp0hEaVoFmoYPb+coyfeDRwebMhUEHgh1ipHAiVF+Gt
 10VKtKonkggb5aWtTNpPY+j9eZcgqAFpLDjyDKnYkMUot/ajync8iCZ+8UgpSFPY7xSL
 gjON/Bei/AQgPSnbtG4wiHaMXKv+oyO1uxc/6HJCHDrs8EkA0debASne5ARpkVJ0R+FG
 OlfKbwiqhzHZt9pBeOyExXRS/dhnZB4yK/WSaSA6cpLorZk7MXsQvxmaE7X3t1hFGzjX
 5ORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Quhy5/QZPA8/P4q/9fnjufmjHKuWjkZaQYF9/wabbVw=;
 b=QMTgdnCr2E0JpB0etdNVeLrKkoaAv+z1v+PVFEniTOUM77z/ZrdfKvAMnXsofGKEqM
 Ps8Yw9gvb45Ih8IqPpSXtH46c8AAxW/XnoAdJ9PWDxbOWxg8kk7f3Rmkxy05rA5bHhnm
 EYkuOl1oMn6TIvDWKvqCCaAKnaVdCTbLDj1Fg1nFhld7iok/tdo7Qvct3H8PnscjDp9F
 rKzpW9G+zfgXkFK6z8nLpMtensotm8UcgDduhdg+eoOqqwu8sirfEbaX9DxB/4JAhd2Y
 FKvYBIaFWVWLvF4KKyeqZtkULmtmsaNcEWxJ/iwLmKUKvpNgKvMJrVBFoUoYTz6juhNq
 6pKg==
X-Gm-Message-State: AGi0PuZvENgVOnkzHMa8qb8fC1i1BusKPFdVUwkgNgnfY6CdVF/UYMwV
 LvWp/1PLc4ibSYYr5PPJrHG3fw==
X-Google-Smtp-Source: APiQypIu7xZA7V1YhEkwC7XML1SD8uFsocdPfcN93OJKoMqGsb76XglFSxzjrLHKYnXDd+XsfzKmUg==
X-Received: by 2002:a62:154:: with SMTP id 81mr2864787pfb.228.1586270833015;
 Tue, 07 Apr 2020 07:47:13 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.47.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:12 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 7/9] riscv: move exception table immediately after RO_DATA
Date: Tue,  7 Apr 2020 22:46:52 +0800
Message-Id: <1d1d278ca3957db9103f40ddda008128365d6d72.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074713_862921_3CC360B7 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Move EXCEPTION_TABLE immediately after RO_DATA. Make it easy to set the
attribution of the sections which should be read-only at a time.
Add _data to specify the start of data section with write permission.
This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
Suggested-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/vmlinux.lds.S | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..02e948b620af 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -58,6 +58,10 @@ SECTIONS
 		*(.srodata*)
 	}
 
+	EXCEPTION_TABLE(0x10)
+
+	_data = .;
+
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	.sdata : {
 		__global_pointer$ = . + 0x800;
@@ -69,8 +73,6 @@ SECTIONS
 
 	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
 
-	EXCEPTION_TABLE(0x10)
-
 	.rel.dyn : {
 		*(.rel.dyn*)
 	}
-- 
2.26.0


