Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8CE1404CE
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 09:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i++Wnr6lskfdyTEf2bt4TSLzH2Xad/WDR/WNYAW09E4=; b=JD9jz/kxVZJfP1
	ccZO7GT192EHswYmdsU5FpIvalbmCZlZ5s+VkCBs8OnrTG7xhuIxkZZRerrQR9Ur5g7C+69Ws2UNt
	pfZV1jCZSrILcxsroGVJeiG4egxIrsKFxSwFRPZIA2rG3Ctwx1eYyNk1tc/DwQcbK2tO3/XNV13i5
	z2/PxTwbyl0/QMxY22Wf+KpYgFzeropQuRHFtj7c9gpOIclKQ7HZgEs76yZnzqlJXYutUwXfZ5J4J
	wubwpmlryRdi9POlHC40y9BepUsUj/Ncj8rVuAPzQRBxGo5dBCTv9l+296la5vUh/ptnVVKB6MZar
	NBTtGLNlHv12ljelbGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMbk-0007eQ-KI; Fri, 17 Jan 2020 08:03:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMbR-0007U2-Ia
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 08:03:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so6415967wmj.4
 for <linux-riscv@lists.infradead.org>; Fri, 17 Jan 2020 00:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i++Wnr6lskfdyTEf2bt4TSLzH2Xad/WDR/WNYAW09E4=;
 b=V7pcvnC73rYBS0KY9vSQuPPoEpxAvmkxo2YQx7SaJqwU7P4l65Hxjt9kOwliECjw9P
 YSW/B284rrNNrsol0MpsGM3wcVvOQakDsgmtc9GVvvGrDYey7UrZ2qH6NscydWjrDnci
 N+w0eDBnqHXYHUDgbLNnU7vcr4iOoh8jEH0sW2C5UZ751dm6PAdbcuF6gKQqUGWShSp6
 PLLBJbhrzE2b9vaANhz7QeZU70gLhGkoDA6DM7CgZHpV6A4EcMED9tJUSQb67/A+gmZp
 eAE04AXEcX//EN3QzjxcaulB9DofVRVeo85B4JZCm5LtlBV1DZROEdJRinPTDd/wuMyP
 cD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=i++Wnr6lskfdyTEf2bt4TSLzH2Xad/WDR/WNYAW09E4=;
 b=f4Rcm1rPDXycA5c1hhKXyYhQQmTOppOCl855M76y7I6vd+YyRXFAO4k9eM2NZf4FuS
 bPAc/DvJ3rlYEtjQCEPr2YS7iYutbn+X0UeDn4km/8II0kI7L59Zbv4hukBKOTBtdWkr
 C2ACFs89h103GuBU3MrhRhuH00iVMBoFRo8BmqOndEVyvmHY3YIhmTQxX2Zr4tZkH/dU
 zyiFAkzU1ITkDje0I3nAHzw1R9t/WEoek4VrdBa1shaxNISY/q1lrY4O+QntxBIr+57k
 AQB6vVVzmJlTxclHAbbH3AZH66GHsXowZ95/Al0BzkcE5qPbAjs6rh7IeVwqhZIxxJ/O
 J5tA==
X-Gm-Message-State: APjAAAVNVG58bFv3s4la6wg6MDpbMfZyNdmuKWbWMvw3F8Hq+k5nuYKy
 WUq5kFw688PE2UmXOyeeiWQFqg==
X-Google-Smtp-Source: APXvYqxl96ObJwT48mJl919pgWBhjJ834NW1hgROfepdvC4HdYZrfui8PwfpswFTjDrAhkPvRoSP8Q==
X-Received: by 2002:a05:600c:28d:: with SMTP id
 13mr3383409wmk.52.1579248215057; 
 Fri, 17 Jan 2020 00:03:35 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id w8sm3110202wmd.2.2020.01.17.00.03.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Jan 2020 00:03:34 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 0/2] microblaze: Enable CMA
Date: Fri, 17 Jan 2020 09:03:30 +0100
Message-Id: <cover.1579248206.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_000337_611301_5F3001CC 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Waiman Long <longman@redhat.com>,
 Guo Ren <ren_guo@c-sky.com>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, Manish Narani <manish.narani@xilinx.com>,
 linux-xtensa@linux-xtensa.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Chris Zankel <chris@zankel.net>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Manjukumar Matha <manjukumar.harthikote-matha@xilinx.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

the patchset enable CMA on Microblaze. Based on Christoph request I have
created the first patch which makes dma-continugous.h mandatory for all
archs before Microblaze wiring.

Thanks,
Michal

Changes in v2:
- New patch suggested by Christoph
- Align commit message
- Remove adding dma-contigous.h via Kbuild because it is done by previous
  patch

Michal Simek (2):
  asm-generic: Make dma-contiguous.h a mandatory include/asm header
  microblaze: Wire CMA allocator

 arch/arm64/include/asm/Kbuild         | 1 -
 arch/csky/include/asm/Kbuild          | 1 -
 arch/microblaze/Kconfig               | 1 +
 arch/microblaze/configs/mmu_defconfig | 2 ++
 arch/microblaze/mm/init.c             | 4 ++++
 arch/mips/include/asm/Kbuild          | 1 -
 arch/riscv/include/asm/Kbuild         | 1 -
 arch/s390/include/asm/Kbuild          | 1 -
 arch/x86/include/asm/Kbuild           | 1 -
 arch/xtensa/include/asm/Kbuild        | 1 -
 include/asm-generic/Kbuild            | 1 +
 11 files changed, 8 insertions(+), 7 deletions(-)

-- 
2.25.0


