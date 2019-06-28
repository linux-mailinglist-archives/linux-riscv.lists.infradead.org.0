Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142915A71E
	for <lists+linux-riscv@lfdr.de>; Sat, 29 Jun 2019 00:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Zt7aUi5A8NxtPnG1/OFmIj+/FA3e5XEUs9AEg57rW8=; b=kmrZTW3zOT7Tl1
	IS98kKvXBlPnJXWW/lH6VINJmB4RJXWRXK+EIlbM98OqKzYF7vHr7YdE7kJ1jIpCgEnQjJqVTlTOA
	J7Yb8FH2DOWxeOLTeduzkvFPtsBIV0PH5FWe9wPahx1WzZJIUx0k2YKJweoMuVZAizcwQ/NCAVwez
	K1YrgggILqH7l93hjDh77jJD00H063bmpXwsh1/0R+qhKdAr4RjLtGOOBJ+PALUhphJH0IKfZqXt/
	vVocmWtaSDfxElbDEZpdBsxvyaD8+gH3Zdc0Dpz9mu8P5Mu9nTbs7m3YtTDKS0ABN2gkWiY9o+ont
	UHcfxLY3my4v0y3Z3QSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgzaO-0001nC-4W; Fri, 28 Jun 2019 22:43:16 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgzaL-0001mG-2n
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 22:43:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so7289176ior.9
 for <linux-riscv@lists.infradead.org>; Fri, 28 Jun 2019 15:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=5I9M9/u3BZ2aesCKkS5M8mcyM6rCFJYJd1iKO2yILd8=;
 b=kUL71QtdPQdVUccvQZfpc22DDxFcjvj4MJqwWMEN45l0h5nd4Pj0GSgrjTnkIyz0Ix
 RzolfhQ5j/LXeOnzLGyWbNjzjiW6UtSXANUDt62OPMMoxjWq2DY79v8LoNB2dXTpTFAl
 czqhVM2+90C7fWBWvcdN4JPr61JyORlKq+1DXsASDiDPHs+FgNh5kmkaTovHOXkE4eCF
 gcXDNIkUay78UEV5+O4v4sbCdRLhVSPlURd8TozlbPXoX2hChHkUP+VFUt3qGbKAl7Gq
 h7HnbZL6C54JVtstXoS+3hxdB3/TfM3Wofrc3hOLsvWGmsuVxQyYr/xYJ86BNzg98CH4
 n0+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=5I9M9/u3BZ2aesCKkS5M8mcyM6rCFJYJd1iKO2yILd8=;
 b=jOVGKgXHvCZgjYGHGbnG+wWT73tj7+YpIRJQrZjJ8qxwLJI0FiT74r8s+RQlFMo0CG
 sJ3GiI83HWmWz5hhI/zQc6h8uJo1ZlNrItPZZBNYP7y8W3ph+hVKqvVdQ6p61PAz8jXi
 +JZ8DRXQHELQ8CaNztPOnyr45lDro8F9RUpoqMoewip4LtebEEYW9q+Ua4x224Jm7dXM
 RPDYBok9yTWuHX49JFBjHyArtpy/b60LNgkdiMC+gmoQw4pNUS5UdyEaA2iGs/xV9UMn
 VBAOvtN+cv3fT14+dRDgBp6Dsi8+aOWxONATHjNQ6SS01+El0o6zlcWGvf88+9lG0706
 gCGw==
X-Gm-Message-State: APjAAAVzlVdMNQndQmOBCB7rxm87+vPchJ2u6OBrGv4l1DXipO3A02bV
 VlkBg2B/MYw3B0R5F3kxXgEO1Q==
X-Google-Smtp-Source: APXvYqxU0Cc0XVc9WLJLPycKfFcWuc14NaIqc8o3JqONLOWWJ571FTA0VjrpfrmdPbE5HwtVP8SC7A==
X-Received: by 2002:a05:6602:2252:: with SMTP id
 o18mr12827600ioo.63.1561761790935; 
 Fri, 28 Jun 2019 15:43:10 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 i3sm3148925ion.9.2019.06.28.15.43.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 15:43:10 -0700 (PDT)
Date: Fri, 28 Jun 2019 15:43:09 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] RISC-V patches for v5.2-rc7
Message-ID: <alpine.DEB.2.21.9999.1906281541520.3867@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_154313_192437_E5DA50B9 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 4b972a01a7da614b4796475f933094751a295a2f:

  Linux 5.2-rc6 (2019-06-22 16:01:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-v5.2/fixes-rc7

for you to fetch changes up to 0db7f5cd4aeba4cc63d0068598b3350eba8bb4cd:

  riscv: mm: Fix code comment (2019-06-26 15:10:30 -0700)

----------------------------------------------------------------
Minor RISC-V fixes and one defconfig update for the v5.2-rc series.

The fixes have no functional impact:

- Fix some comment text in the memory management vmalloc_fault path.

- Fix some warnings from the DT compiler in our newly-added DT files.

- Change the newly-added DT bindings such that SoC IP blocks with
  external I/O are marked as "disabled" by default, then enable them
  explicitly in board DT files when the devices are used on the board.
  This aligns the bindings with existing upstream practice.

- Add the MIT license as an option for a minor header file, at the
  request of one of the U-Boot maintainers.

The RISC-V defconfig update builds the SiFive SPI driver and the
MMC-SPI driver by default.  The intention here is to make v5.2 more
usable for testers and users with RISC-V hardware.

----------------------------------------------------------------
Atish Patra (1):
      RISC-V: defconfig: enable MMC & SPI for RISC-V

Paul Walmsley (2):
      dt-bindings: riscv: resolve 'make dt_binding_check' warnings
      dt-bindings: clock: sifive: add MIT license as an option for the header file

ShihPo Hung (1):
      riscv: mm: Fix code comment

Yash Shah (1):
      riscv: dts: Re-organize the DT nodes

 Documentation/devicetree/bindings/riscv/cpus.yaml  | 26 ++++++++++++----------
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi         |  6 +++++
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 13 +++++++++++
 arch/riscv/configs/defconfig                       |  5 +++++
 arch/riscv/mm/fault.c                              |  3 ---
 include/dt-bindings/clock/sifive-fu540-prci.h      |  2 +-
 6 files changed, 39 insertions(+), 16 deletions(-)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
