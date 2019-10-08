Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB57CF714
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 12:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eDdjmFfso0M2FzOM2j1qFRoDoDZHyPP0V9E3nV2Zh/U=; b=tkU
	95h4BZ7mhDib+jAuDZ4QxsKLnXMavbIcoQITStCv1llVslu3PI9zsiNrz93WHgsUAXMBDaRl+bc+y
	uCLUUqz5ysI+wukzg7f2fsNhd4xnzxnBYNKWqfVvNPT6FbwRXIPpg/9iBmE4MfxHA4mpyHPbkc7AF
	RoJjWNNyyZluvrkRQ2/uNHSkVscIuvBCB4TE59h+aULnXRjWtbIVxaqT4xghyKfMeIuNvemgzK78o
	/0/XcN0y1U+cSVXrxUgVN5Hk27eQn4KDBgfJEeC2ue235ikI96FWn255vAdzZ+fWQi/tsDB9HO64H
	7/C8x9YFki646fb4elFLOss0N7NSanQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmpU-0001lJ-FN; Tue, 08 Oct 2019 10:34:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmpR-0001kt-03
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 10:34:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id a6so2553566wma.5
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 03:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=yhoP5CFY+Z1ghLZyUQcS4Xw0PBKTH2xNqhN5u2X2Zzc=;
 b=S/y/UYFIfK5H9H2HljRRWcBwJ8ElgkL7TyHzC4kXPvVwxvpRbnTaMm0R/RDTQW3QDo
 R2AQ0tHtXzOmzjcF0HBHdZsQfX+cem0hZzCB8bzwis0VRQHcKRLhy2nOtURawr/8sixL
 ZehQEUTJCwts6uZ4FqewNFSZIzqfeLrRp8RFdbAdmlRcaQ84u+RGwK7b20gClMNHFJTs
 8zazCsfJ8utaVe9grK31P0Q663c7Y2oVP5+SFdFI3aBl+q9wxuME/HS1rhiO6M1+1tzg
 aUUuBEfh1J0FIZ75a1foG5Cv9rreLhueg3K8gKSGkD+gnS6kPci613hhSFpvsIxTZhxc
 SaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=yhoP5CFY+Z1ghLZyUQcS4Xw0PBKTH2xNqhN5u2X2Zzc=;
 b=Y2Hsi7ttVtj9clad00+Dn5XI21N2Oo+0+qFktAlDFaoAm1E6LxZOLkFJzOqbqnlbdM
 AS/6ncdT+/7i4dSHndt0ZW+nCfwfvZGcvGhEjO3zAW86SOyYnHEPd6pZettAV3tNvHvh
 I73647fcSJhEHKIci4I5aKtCt5PlBMhP1aFmFgVwR+d40fL1n6q5kASs1Xiann126Tvm
 BPirC1jC71PJGcHhHOzVop5UqxB9xjpx1bWQdYtA9ZGS7jIQi2LsLaqRBGf1m94PA+CS
 qJOsdaqVKTzyOmVBVBV/VTEqv04EbWyzvb6qL8qBa+iNkr1EdcbSMIxWGoqprfJ0SnWW
 kTDw==
X-Gm-Message-State: APjAAAWuPZKyO68DbEn2oySttrZw11ZkqiI5XJFCUadi3K/vkMYhhNsS
 RoRRj/AM6J39FcOHvmxMyzHdmA==
X-Google-Smtp-Source: APXvYqxOtD4WlrE1pyD3uJ7bqFN11xNdK3t/H3wgvpDqFkTZ+Wb4TRhM7KwImXRCWbyD1sQHepAmKg==
X-Received: by 2002:a1c:e906:: with SMTP id q6mr3029258wmc.136.1570530889569; 
 Tue, 08 Oct 2019 03:34:49 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id d15sm7310906wru.50.2019.10.08.03.34.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 03:34:48 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH] microblaze: Include generic support for MSI irqdomains
Date: Tue,  8 Oct 2019 12:34:47 +0200
Message-Id: <aa6dd855474451ff4f2e82691d1f590f3a85ba68.1570530881.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_033453_039418_AC88A59F 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Kuldeep Dave <kuldeep.dave@xilinx.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Firoz Khan <firoz.khan@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Kuldeep Dave <kuldeep.dave@xilinx.com>

Enable msi.h generation for pci/pcie irq domain support.

The same change has been done by commit 251a44888183
("riscv: include generic support for MSI irqdomains").

Signed-off-by: Kuldeep Dave <kuldeep.dave@xilinx.com>
Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/microblaze/include/asm/Kbuild | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/microblaze/include/asm/Kbuild b/arch/microblaze/include/asm/Kbuild
index e5c9170a07fc..83417105c00a 100644
--- a/arch/microblaze/include/asm/Kbuild
+++ b/arch/microblaze/include/asm/Kbuild
@@ -25,6 +25,7 @@ generic-y += local64.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
+generic-y += msi.h
 generic-y += parport.h
 generic-y += percpu.h
 generic-y += preempt.h
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
