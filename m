Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42572128C68
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Dec 2019 03:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kJK8dnMKjhx1jwfX9hU56RSfsCTRfjhHTaELgQDlsSQ=; b=MxD
	46Bq2E4y0vF3frIj5sR86g692kLkQC0IA4BsHbCJ3YSSBsk4Kg+hwO83OoMa9J71XLN6h9edRgcwN
	GYvh6+TR1tA7P8jlH8dvn82RPqKH2sxifRKWyRh6KbqQHGb7nQNVjcyHRPry10xdqqunAawXvjHJd
	NXkHa8WYoZYquqFIbMKG7uiwXulOre2/sEYxXqErEhMEf6kSB1reEmsdfTh6ShUX3xZSv2Qr4t0By
	vtJMoCwDGMoU0P7dbaxzID205nIRcz+aHcwrjjqWFP7HJV6ewQKYll4rLqXTs18TEajTBMTsWOPba
	5y9pUJ80f1eNHXztwvncGR7IQdLsFuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iirRR-0002EG-0O; Sun, 22 Dec 2019 02:58:01 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iirRN-0002Dm-5A
 for linux-riscv@lists.infradead.org; Sun, 22 Dec 2019 02:57:58 +0000
Received: by mail-io1-xd43.google.com with SMTP id x1so13148552iop.7
 for <linux-riscv@lists.infradead.org>; Sat, 21 Dec 2019 18:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=kJK8dnMKjhx1jwfX9hU56RSfsCTRfjhHTaELgQDlsSQ=;
 b=XXsesugG1x9YVhsNiK9YkzVHTmcJ9uQ983eWZ98FGa9Y4BqeEaLJ6CaKovW8HSqe01
 QJLPmd3yt/KBXpFMG04ypLWnijz5OYhr0c4n1u3vcPVbXbfsxY8LWibyJALHbGUBTTEI
 X1sY1SibRLZ32JouPOEBBoR2dHOdTKyBWx5OwxAT6LP2uLSByHALFTu0Y93czgyNO+bI
 vmXy5Kc3wX71FAUNNULLNj5WMj88O9uMbXxy3nnoBYPSUkHCQ/PSCxSYebxyDG9XNVG1
 YH4YansJeKIEeEop/IXLSdzKg/ykoHa/5PYxxJIWxgCisHesjLjpBkAGaVHbsPLjYuRT
 vCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=kJK8dnMKjhx1jwfX9hU56RSfsCTRfjhHTaELgQDlsSQ=;
 b=sOKdhCtk1ZO5mFZMgY/2s1MMuQ/QyXXRcjrLLR3oCmkbJ1Yykxj25sVe/pXWrgwVgY
 tCU4JtcfOATPewI2+FePsU/k3SAwqAZC4RVCWwtx0UN5g+FoyIel2VRcEu4aoFidY/G4
 Tg2JtWJoXcv1RPOWGOlzwEVnoq+X6GvPXkit7oFAvG2kGgBKXhRD0nOKqziAu/0i0v7y
 Pyt6yLP7G/IcK/4H1UizspTxA/hNS1daYMGdMXoADhbinSReZhJobL1hzUdCfR11Q2vm
 IdSgoN2yBNlVwukNGrpCjODR/Ts05Uu7MpHksIU30CjO0s0q56/G4PcxkeUxCVzDRjnF
 +ODw==
X-Gm-Message-State: APjAAAUVOLpeRBTqFXnNxJt8Gub3vj945CgPArFzQ/qi8cn+F0KqFIE0
 KRvIxwt/YJ6JooJtzrtwcnicoA==
X-Google-Smtp-Source: APXvYqyCCL5PzwujEJ64y01MQfpVGe4nNzyo2C8eL7WmMhFBH9ygIqUJm/ywM4JHZq7hCUPuJ8pmgg==
X-Received: by 2002:a05:6638:a99:: with SMTP id
 25mr19380662jas.37.1576983475483; 
 Sat, 21 Dec 2019 18:57:55 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id d7sm4927940ioo.68.2019.12.21.18.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 18:57:54 -0800 (PST)
Date: Sat, 21 Dec 2019 18:57:50 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.5-rc3
Message-ID: <alpine.DEB.2.21.9999.1912211854440.57866@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_185757_334626_265A9E1E 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 7e0165b2f1a912a06e381e91f0f4e495f4ac3736:

  Merge branch 'akpm' (patches from Andrew) (2019-12-19 08:13:04 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc3

for you to fetch changes up to 9209fb51896fe0eef8dfac85afe1f357e9265c0d:

  riscv: move sifive_l2_cache.c to drivers/soc (2019-12-20 03:40:24 -0800)

----------------------------------------------------------------
RISC-V updates for v5.5-rc3

Several fixes, and one cleanup, for RISC-V.

Fixes:

- Fix an error in a Kconfig file that resulted in an undefined Kconfig
  option "CONFIG_CONFIG_MMU"

- Fix undefined Kconfig option "CONFIG_CONFIG_MMU"

- Fix scratch register clearing in M-mode (affects nommu users)

- Fix a mismerge on my part that broke the build for
  CONFIG_SPARSEMEM_VMEMMAP users

Cleanups:

- Move SiFive L2 cache-related code to drivers/soc, per request

----------------------------------------------------------------
Andreas Schwab (1):
      riscv: Fix use of undefined config option CONFIG_CONFIG_MMU

Christoph Hellwig (1):
      riscv: move sifive_l2_cache.c to drivers/soc

David Abdurachmanov (1):
      riscv: define vmemmap before pfn_to_page calls

Greentime Hu (1):
      riscv: fix scratch register clearing in M-mode.

 MAINTAINERS                                        |  1 +
 arch/riscv/Kconfig                                 |  2 +-
 arch/riscv/include/asm/pgtable.h                   | 38 ++++++++++++----------
 arch/riscv/kernel/head.S                           |  2 +-
 arch/riscv/mm/Makefile                             |  1 -
 drivers/edac/Kconfig                               |  2 +-
 drivers/soc/Kconfig                                |  1 +
 drivers/soc/Makefile                               |  1 +
 drivers/soc/sifive/Kconfig                         | 10 ++++++
 drivers/soc/sifive/Makefile                        |  3 ++
 .../mm => drivers/soc/sifive}/sifive_l2_cache.c    |  0
 11 files changed, 40 insertions(+), 21 deletions(-)
 create mode 100644 drivers/soc/sifive/Kconfig
 create mode 100644 drivers/soc/sifive/Makefile
 rename {arch/riscv/mm => drivers/soc/sifive}/sifive_l2_cache.c (100%)

Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6895393	2330852	 313920	9540165	 919245	vmlinux.rv64.orig
6894347	2329588	 313920	9537855	 91893f	vmlinux.rv64.patched
6656178	1939832	 257640	8853650	 871892	vmlinux.rv32.orig
6655130	1938688	 257576	8851394	 870fc2	vmlinux.rv32.patched
1172240	 354256	 130024	1656520	 1946c8	vmlinux.nommu_virt.orig
1171538	 353368	 130024	1654930	 194092	vmlinux.nommu_virt.patched

