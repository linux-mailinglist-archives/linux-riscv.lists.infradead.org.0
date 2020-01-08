Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5D0133936
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Jan 2020 03:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YdOoXfjMlmlNHacUP7Z48pi92SG1YwN9wrHsFZ4ZOxI=; b=UUXWdI4XGdIOAKkCKgoV6eXNLC
	8+sAY07cVPr1FCBPG+4nHVwS8aRZRhFLU9H/bE3rvpOzpOWUwO6Wv4kl0QlRiJWxCmBi/gX/C46DE
	mGoeB7iBrkJHLtoP73BtWpF/rDpp29MrEvTca7Cqg0gPhAX89ns4wg2OLAL2vEnsF9n/rDCHjFqle
	LZOCumOJOAeZHEB04Jme7j0CqJjeXqjYn1kBvPeP3SVp+rrGZGiQixp7kxMjtTTUe2kWSyBsz4tiq
	kjXpSuzSmX3GJ17+yMiRpOIHdi49GOqIFtQ3wGWM5/oAItp/+czt3MzxSMOs/gyYOShrYKlZW4Gug
	rOrgO1CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1H9-0007Pg-BQ; Wed, 08 Jan 2020 02:40:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1H5-0007On-Ea
 for linux-riscv@lists.infradead.org; Wed, 08 Jan 2020 02:40:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id x7so787270pgl.11
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 18:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=YdOoXfjMlmlNHacUP7Z48pi92SG1YwN9wrHsFZ4ZOxI=;
 b=knnFu4kfnLycncKppgXa/Y7ob1Z6g9DGNmJB3EohyBMwhCgaAc91+DxBk+nzQdjg+l
 jcfiucb2QUK8C5aKxaPM2z/dxSLT6k5DuvrckWwJIo81LdIob1zjnxkaqw+J0WENgUBz
 q1KxQXgQBVQed7tzA6aBlY3R0x2WgdFg4lIwKIORXFlgQnOzDtutBKEgP5yh+AP8qnEx
 C8nrnBWFHBnfQURBRQCStTBmeoQlAyNV4PvnOT5X40/CxvbNabnmKn4jgKfVgt9Dcpj+
 k4PUnFjEVBsSUZEQ6pXbh6UybKiyz/TEmTmRwOdlg6fyN6g23NjWPbRqtu91t2TRUOLZ
 IO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YdOoXfjMlmlNHacUP7Z48pi92SG1YwN9wrHsFZ4ZOxI=;
 b=BNIW35hZ9n3ACrgWyXAkeU/hg3+tytgwZGGTuyDtThaWP+9vICobKvvyPkte1mHw/m
 Qido+Yt6dUy3TKNuBOKvYQsBQ/V8HJr2OMRJiK/j3U5ccFPtw8ln+prmeP0MOxRe3DBm
 gO4zs2xxqsc9KnF4mRsVGpR8K7o052NFymGrpJXX9niXNMfmV0ZbYREgO/LA5KDqlcCe
 HMc9hVsCr+2J/vcef0lY9ck+QchcZ/f9H9Iuhc5WmxKixVW+1fnr4NK5g33tDbWznz6S
 VRh/jqav581vg5Mz9/dl20nZORVWLsV4jaaEP+np8HN4jlOEWUpJrQEtNVdsK/lFrgNK
 k7AA==
X-Gm-Message-State: APjAAAVcWyx76Vt+ZzA5NQZiLw2Fxt3IFvIX9FSzeaIzyAwdqoS4qrtk
 E4yjHrVhUakPJP59LpQ1THdAIw==
X-Google-Smtp-Source: APXvYqwEU/CLUZ+DPliiIIBvw3Nnr70BPkLNpg5SROWYJCuvyinwiF0BSh22tEYUZLUX/hfXXJVdzA==
X-Received: by 2002:a63:f403:: with SMTP id g3mr2950955pgi.62.1578451246863;
 Tue, 07 Jan 2020 18:40:46 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id b65sm1151234pgc.18.2020.01.07.18.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 18:40:46 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] riscv: to make sure the cores in .Lsecondary_park
Date: Wed,  8 Jan 2020 10:40:35 +0800
Message-Id: <20200108024035.17524-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_184047_488437_CC23B355 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The code in secondary_park is currently placed in the .init section.  The
kernel reclaims and clears this code when it finishes booting.  That
causes the cores parked in it to go to somewhere unpredictable, so we
move this function out of init to make sure the cores stay looping there.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/kernel/head.S | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index f8f996916c5b..276b98f9d0bd 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -217,11 +217,6 @@ relocate:
 	tail smp_callin
 #endif
 
-.align 2
-.Lsecondary_park:
-	/* We lack SMP support or have too many harts, so park this hart */
-	wfi
-	j .Lsecondary_park
 END(_start)
 
 #ifdef CONFIG_RISCV_M_MODE
@@ -303,6 +298,13 @@ ENTRY(reset_regs)
 END(reset_regs)
 #endif /* CONFIG_RISCV_M_MODE */
 
+.section ".text", "ax",@progbits
+.align 2
+.Lsecondary_park:
+	/* We lack SMP support or have too many harts, so park this hart */
+	wfi
+	j .Lsecondary_park
+
 __PAGE_ALIGNED_BSS
 	/* Empty zero page */
 	.balign PAGE_SIZE
-- 
2.17.1


