Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38920141F43
	for <lists+linux-riscv@lfdr.de>; Sun, 19 Jan 2020 18:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iYWEA7Nwdx9KjiEDDgBrOJ2jGr9aQ4qoZGBtlzHjvk0=; b=mYN
	+RhJPyXyxfjfcq0WOyt8S7T3rg6vVJAbHTBqG6Sov/18d7KDU3qM8jcMaWInyRqvi7GOzm2e0rpYE
	Iw/GaUw6ZzRekeDYTHGK3wfSX2PUZVMbMn7uCsnrm4PqjvSF9a5S/ztbIjR24KrdITSVvMLjqIkHm
	xJvxRhmPIRSgLAhREY2a1ZqDuHcQKYQQgMbnx5F7a8Vh7BTF/xLONDHd5x3dQJnlPjRFk/uo8JN5/
	TR2XVec7laq6L3qwwXhPUFpK3Pq0AjQMG3qPoA11mXq6YfW1PjFq3dkV1jOFLzrtwIiuObq+G7btz
	HeRhiWGCuxP/5WkqSZWGoCcWs2Dw16Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itEkK-00074n-Ew; Sun, 19 Jan 2020 17:52:24 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itEkG-00073x-JV
 for linux-riscv@lists.infradead.org; Sun, 19 Jan 2020 17:52:21 +0000
Received: by mail-io1-xd42.google.com with SMTP id c16so31232128ioh.6
 for <linux-riscv@lists.infradead.org>; Sun, 19 Jan 2020 09:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=iYWEA7Nwdx9KjiEDDgBrOJ2jGr9aQ4qoZGBtlzHjvk0=;
 b=CW4CvWsHyBNUDaDJwPytZLKUerbejYxDQBLCcEom9yUWFDSfiCkys2vhZeNP1wdxWQ
 I1uRiaBLUsanTdej8NQgM6+rsJqg0zfdUKev2Ac7nb+Y4VcgOqTQJ064S6geRa0rN5BA
 6mxANYcMW048VtBa7HyNY0iZhqsfhbnT/sEtipG7Qgp9W6OTA6CzmorwJLMNDvn75/4G
 /T7hiy3mP7uYjlhWNAbNooOhGmLrLFYCCRxtxOPvuajWFOeAwrcmbZYqag21tNB+ZbVz
 2ASk22LVOZhA1Xnj9ohUKNo9MgrkOovN/55kzVQzRKpL8t5FDAUlyjLnG3mIfNqQmw31
 G2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=iYWEA7Nwdx9KjiEDDgBrOJ2jGr9aQ4qoZGBtlzHjvk0=;
 b=XDn2ZG5ZbSxMtBnE78lMEa7U7aE5vFJsBRnSDCzLb6HFMl11Zg9RP31IHwToZLoJsj
 buy6cmiMtd3mMSO5PnUsQx0e48bxoFHC2R0p+7J3qigWbsE10Fs7tC5z5iCrlR51FHmC
 XnvgR6w/BAUWO7wH003qDxELWWQ+H4uiSUhNHQvv2fsKeHYv5aof0KF+eQ/18nqlA6o6
 nQbnZ6+RDIjQ0lUB+PIo4Ucw2oEvPamoKOblbCfkA5W82F5Y1wCBCcGrB//mT0Hy0JL1
 lgMqKfuFkrNhDJxYe36iw1BLm4T3aaqLevf9gvwG7rSfAlQhMHI+ayRlR+4BOSfBFRyr
 yDAQ==
X-Gm-Message-State: APjAAAU2Lj0HGupc5wA0atPbbJ/mmvSl2aWlUWi5nqCGjuba4Hx53VYP
 IBsPsBroXWNRnUkTz07YXyfhww==
X-Google-Smtp-Source: APXvYqw6GVJqwdnTZ5jJY5cb6qqQoglMjP0jUWj5PPUbWGrWb8CpsVRfHD35o6Qhc9mPreAls420vg==
X-Received: by 2002:a05:6638:38f:: with SMTP id
 y15mr42234285jap.17.1579456339427; 
 Sun, 19 Jan 2020 09:52:19 -0800 (PST)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id a12sm7716352ion.73.2020.01.19.09.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jan 2020 09:52:19 -0800 (PST)
Date: Sun, 19 Jan 2020 09:52:16 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.5-rc7
Message-ID: <alpine.DEB.2.21.9999.2001190951380.106116@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_095220_700891_AE021A38 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit b3a987b0264d3ddbb24293ebff10eddfc472f653:

  Linux 5.5-rc6 (2020-01-12 16:55:08 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc7

for you to fetch changes up to fc585d4a5cf614727f64d86550b794bcad29d5c3:

  riscv: Less inefficient gcc tishift helpers (and export their symbols) (2020-01-18 19:13:41 -0800)

----------------------------------------------------------------
RISC-V updates for v5.5-rc7

Three fixes for RISC-V:

- Don't free and reuse memory containing the code that CPUs parked at
  boot reside in.

- Fix rv64 build problems for ubsan and some modules by adding logical
  and arithmetic shift helpers for 128-bit values.  These are from
  libgcc and are similar to what's present for ARM64.

- Fix vDSO builds to clean up their own temporary files.

----------------------------------------------------------------
Greentime Hu (1):
      riscv: make sure the cores stay looping in .Lsecondary_park

Ilie Halip (1):
      riscv: delete temporary files

Olof Johansson (1):
      riscv: Less inefficient gcc tishift helpers (and export their symbols)

 arch/riscv/include/asm/asm-prototypes.h |  4 ++
 arch/riscv/kernel/head.S                | 16 ++++---
 arch/riscv/kernel/vdso/Makefile         |  3 +-
 arch/riscv/lib/tishift.S                | 75 +++++++++++++++++++++++++--------
 4 files changed, 73 insertions(+), 25 deletions(-)

Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6896935	2329912	 313920	9540767	 91949f	vmlinux.rv64.orig
6897193	2325848	 313920	9536961	 9185c1	vmlinux.rv64.patched
6657458	1939044	 257576	8854078	 871a3e	vmlinux.rv32.orig
6657464	1939044	 257576	8854084	 871a44	vmlinux.rv32.patched
1171666	 353420	 130024	1655110	 194146	vmlinux.nommu_virt.orig
1171758	 353420	 130024	1655202	 1941a2	vmlinux.nommu_virt.patched

