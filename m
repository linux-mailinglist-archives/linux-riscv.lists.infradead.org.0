Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DC6E3FD0
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 00:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UGasZrzDqPf9kXZiUm2zrVF45WQXHkCZoIcqIJFAkEI=; b=tklAY325uoHKhB
	5kRbGVhk587Mi9/VzzA1dcPIrhaWTVLWOVhrzumy88em7TyN+SZawZUlcL/NBNoa6UZqXSNQCq9dH
	jBDKWT4tvF/gt+VNRXbEax6vL7cZ4W7mKKn3kKcmjMFt/r3AHb0SORZ0jFTc1jMoT4PUlmFWyCZm+
	l2VdUwIV15L46ZB1Jg+iv5lHDuk57jMEbk24yMI51xmimyz+zRotteQOb5KzRevlvRyDmZ5InKbde
	3aYPU6vtPXUMVMbB1bqAtJG6hwAGv+jezDQUxRmNck6VwXPC8xn/VqtI32l9ARdji27ka98OrGwGj
	GqahGaui1AVT9TJdJE2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4C-0008SU-VG; Thu, 24 Oct 2019 22:58:52 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm49-0008Rz-HC
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 22:58:50 +0000
Received: by mail-io1-xd44.google.com with SMTP id i26so195779iog.9
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 15:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LUBTpk9ooV35xQmJoHGn2mN1fpHGsBmiJOBvpI0fOq4=;
 b=IEZZ4TeaPYu9KusTwoj7WfdPn1cK9KTxR4CsgVIUWzNM7sVDrk3QIl2JqN9AP1q0fD
 mQXxqZpLv+F4Ydq+wQp+MJN/9hawT5YJAt+K9tIz6QieiXo0WvRn8I3QJPxmkUA/T0hn
 cpV5d5m4J3wPcN2XdvKbdGsqTagFTIPB8b/3uzjMERWxapHtaBLtmCNwGpnmZdsLLejh
 FhVD6WbH5LS1wKsH4UWrLuZQ27dBPSyLar0UMkbAufifbBJb9MamMy0Jjn3rcFBLSNp8
 ZhWEIPwBzFvS5cxxxuHtZWn7eq8Y7pAtrgiUUXBzQ66D4OswlcQgnNug4JdMNlAxil2E
 aWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LUBTpk9ooV35xQmJoHGn2mN1fpHGsBmiJOBvpI0fOq4=;
 b=LD0TMgAvot8fWwbY0D+mWHfbxLsCbQzD9mxRwMmKZ77fNGKIq6IUxk6adJe4sNbSH5
 8fc9RnmARTyd4C/hmNM9ij4bEGrIfhMgCOFfZK1e3fhyNhMeSmkixw4V5b7ebdd/JYb2
 ksaU2wa1H+OIS1ZpjGsHcY8UZlZsRtCCoUkbMB4dtzo6M5Uy1aUcJyS02ud1OuZEQ+S2
 +kyPlHLKRboS/r5PJq6ce4vzZK8fMpmM80aIhsJF1v96HYnENLo22qS0YYefQaMLT10+
 nj81n4p68AUcgZf+3JTlS4lA8hfPsr5/jVK4gWj+nB8Se2rJzEsbOrvR8wQR4JW9ApY8
 zfZw==
X-Gm-Message-State: APjAAAUEikN7rWxH+/xqvpSSFUmydgL5gQQYV+EhWA9A2PnOtH+x39Hq
 5G74Pp5aDUf4o5MZjzsfpTMzJ1bEg9w=
X-Google-Smtp-Source: APXvYqxalK2YIo83Fu+BbBhgGuXezPvIjtKCSmn+b8821E2LzS3kdbtWvqRZW1DApkW9NtiE75wsTw==
X-Received: by 2002:a5d:8d0e:: with SMTP id p14mr637597ioj.4.1571957928395;
 Thu, 24 Oct 2019 15:58:48 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm58112ilo.70.2019.10.24.15.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:58:47 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v4 0/8] riscv: resolve most warnings from sparse
Date: Thu, 24 Oct 2019 15:58:32 -0700
Message-Id: <20191024225838.27743-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155849_598724_5A9C390E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.dev, greentime.hu@sifive.com, linux-kernel@vger.kernel.org,
 luc.vanoostenryck@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Resolve most warnings from the 'sparse' static analysis tool for the
arch/riscv codebase.  This makes life easier for us as maintainers,
and makes it easier for developers to use static analysis tools on
their own changes.

This fourth version drops some patches that were in the previous
versions, and restructures some of what was left.  Much of this was
based on feedback from Christoph Hellwig <hch@lst.de>, Luc Van
Oostenryck <luc.vanoostenryck@gmail.com>, and Greentime Hu
<greentime.hu@sifive.com>.

Applies on the current riscv fixes branch, which itself is based on
v5.4-rc5.  Tested on RV32 QEMU, RV64 QEMU, and the SiFive HiFive
Unleashed board.


- Paul


Paul Walmsley (6):
  riscv: add prototypes for assembly language functions from head.S
  riscv: init: merge split string literals in preprocessor directive
  riscv: mark some code and data as file-static
  riscv: add missing header file includes
  riscv: fp: add missing __user pointer annotations
  riscv: for C functions called only from assembly, mark with __visible

Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6662533	2136168	 312608	9111309	 8b070d	vmlinux.rv64.orig
6662537	2136160	 312608	9111305	 8b0709	vmlinux.rv64.patched
6443041	1792976	 255184	8491201	 8190c1	vmlinux.rv32.orig
6443021	1792968	 255184	8491173	 8190a5	vmlinux.rv32.patched

 arch/riscv/include/asm/irq.h        |  3 +++
 arch/riscv/include/asm/switch_to.h  |  1 +
 arch/riscv/kernel/cpufeature.c      |  1 +
 arch/riscv/kernel/head.h            | 21 +++++++++++++++++++++
 arch/riscv/kernel/irq.c             |  2 +-
 arch/riscv/kernel/module-sections.c |  1 +
 arch/riscv/kernel/process.c         |  2 ++
 arch/riscv/kernel/ptrace.c          |  4 ++--
 arch/riscv/kernel/reset.c           |  1 +
 arch/riscv/kernel/setup.c           |  2 ++
 arch/riscv/kernel/signal.c          |  8 ++++----
 arch/riscv/kernel/smp.c             |  2 ++
 arch/riscv/kernel/smpboot.c         |  5 ++++-
 arch/riscv/kernel/syscall_table.c   |  1 +
 arch/riscv/kernel/time.c            |  1 +
 arch/riscv/kernel/traps.c           |  5 +++--
 arch/riscv/kernel/vdso.c            |  3 ++-
 arch/riscv/mm/context.c             |  1 +
 arch/riscv/mm/fault.c               |  2 ++
 arch/riscv/mm/init.c                |  5 +++--
 arch/riscv/mm/sifive_l2_cache.c     |  2 +-
 21 files changed, 59 insertions(+), 14 deletions(-)
 create mode 100644 arch/riscv/kernel/head.h

-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
