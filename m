Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C875F1AD02F
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 21:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=BMVc0Nq1CQqKNSuSon2QaWhNSUBfgWE8i+bigV69U0w=; b=bxZIiDXv7c0HbQ
	fezbS4+U/U8JAC6/CSCePuOCw4HEhaWex8MJAEvIsXacdA8mSygMxEjQz8WPLeRXy4e/rVOu2iU4f
	/Nd3FKxYN+VUMfqb4qsVf+fNBFiqCpGU9LYCQpvRBsjCkfxwP4evn0Z3Ua8rY9MgKDC1MB45TCKjz
	7iDbJueek7c6Mj/LBw5JZ4hFVNoGgM+r7KMme6kIImeNCyYQVWDeiu/CHE2NRnLKsUgBgoiBSwe/U
	BjUjUy5zmJ9g748r+MBmAvfLcIepZUieYu8oFNitlrJHUUV41KTzaPUP8GhbSP2OBIEnPjOxCscz2
	sh+wMkPfAiEJSJkzlN1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9xP-0004Rk-BH; Thu, 16 Apr 2020 19:13:51 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9xK-0004Ps-Io
 for linux-riscv@lists.infradead.org; Thu, 16 Apr 2020 19:13:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nu11so1775329pjb.1
 for <linux-riscv@lists.infradead.org>; Thu, 16 Apr 2020 12:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=BMVc0Nq1CQqKNSuSon2QaWhNSUBfgWE8i+bigV69U0w=;
 b=Qjhofn3EGGsB6uk9jWUCQo7KeDI4d6lB+wODxHKf0Emz2gw8aMLzQ2Cnv0E19z9bcE
 3waT7ic7zcR1SjHuE8F9tzw60RTa4vt0UvKkPhzXGTHepovNKmk10jn9IQ+DfkyFihLc
 UjxmuPWTwWNQOr9tr4pUi8uPc0RAAOLvFOEJLMVGqvZiQM/n4UnTDFmWYA2aZUs+DRCr
 u3G83kXW4a8AO34l4lyb1Hn6OV14TStiByTDtrrKlhdGpZZnc5K9aRNKwtyCHA1nevxT
 uwuO6GPw69L3IOfvUgKteN5vp8ICgUcSunA84dsydVAyMqPDn9yxmsJ3YUgGKQTHGXde
 jblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=BMVc0Nq1CQqKNSuSon2QaWhNSUBfgWE8i+bigV69U0w=;
 b=eobNAERdvtqhT/qQ3JUhzdcLsvnUoPLoDc41OztCzy8SDhFzr8yFlphSu/QpGFLixD
 3NMIcfxo+x47QEAQnDYYsoEbxGV2RY4amQBsLh9KxrdZ8GbtASrt+n/9XDL9N5belHr5
 dqxB3Piurdfsdhu9pSCHlPK0DNtKVzJlJ+AyQDjBoJIs3CCq5JjFuzRdHZP+z8rghofE
 FtP5Wi57/kNpUQhyiH7w3eicEnwkqQodAZjj7sSMPmyr5NAQvFf65l03riwTcNktBcF9
 NhKdXLdZIqjoeddQPsbpVMC42n5AzvGVZkiGTMRVXSL9ks5pf42mU+FzoIWXvddWojf5
 17pw==
X-Gm-Message-State: AGi0PuZLX0I/SOXiqK56TMX6BoFdyItxBbiWEadd2VOVuMIiJtYOWHoD
 peTynX0KZ6BIsCPMwtDYjydRJRLEX1794A==
X-Google-Smtp-Source: APiQypIqfwNGJyGvMd+l+as/jEJG/RQVgOVd+pzgp0dpfTARqhjJ+gDhg56oSBrgBOYPVelqz9N0JQ==
X-Received: by 2002:a17:90a:3a81:: with SMTP id
 b1mr6809564pjc.184.1587064425815; 
 Thu, 16 Apr 2020 12:13:45 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id d18sm7878317pfq.177.2020.04.16.12.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 12:13:44 -0700 (PDT)
Date: Thu, 16 Apr 2020 12:13:44 -0700 (PDT)
X-Google-Original-Date: Thu, 16 Apr 2020 12:13:41 PDT (-0700)
Subject: Re: [PATCH v2 0/5] riscv: Add KGDB and KDB support
In-Reply-To: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-c7095cf1-fe5b-47fb-b510-7d4ee718cdbe@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_121346_614709_E081D362 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: daniel.thompson@linaro.org, kgdb-bugreport@lists.sourceforge.net,
 jason.wessel@windriver.com, dianders@chromium.org, vincent.chen@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 31 Mar 2020 08:23:06 PDT (-0700), vincent.chen@sifive.com wrote:
> This patch set implements required ports to enable RISC-V kernel to support
> KGDB and KDB features. Because there is no immediate value in the RISC-V
> trap instruction, the kernel cannot identify the purpose of each trap
> exception through the opcode. This makes the existing identification
> schemes in other architecture unsuitable for the RISC-V kernel. In order
> to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
> to help the RISC-V kernel identify the KGDB trap exception. In addition,
> the XML target description was introduced in this patch set to enable KGDB
> to report the contents of the status, cause and steal registers.
>
> This patchset has passed the kgdbts test suite provided by Linux kernel on
> HiFive unleashed board and QEMU.
>
> Changes since v1:
> 1. Replace the magic number with macro when filling the gdb_regs[].
> 2. Only support GDB XML packet instead of all query packets.
> 3. Move the macros used to parse instrcuton to parse_asm.h
>
>
> Vincent Chen (5):
>   kgdb: Add kgdb_has_hit_break function
>   riscv: Add KGDB support
>   kgdb: enable arch to support XML packet support.
>   riscv: Use the XML target descriptions to report 3 system registers
>   riscv: Add SW single-step support for KDB
>
>  arch/riscv/Kconfig                 |   2 +
>  arch/riscv/include/asm/Kbuild      |   1 -
>  arch/riscv/include/asm/gdb_xml.h   | 117 ++++++++++++
>  arch/riscv/include/asm/kdebug.h    |  12 ++
>  arch/riscv/include/asm/kgdb.h      | 113 +++++++++++
>  arch/riscv/include/asm/parse_asm.h | 214 +++++++++++++++++++++
>  arch/riscv/kernel/Makefile         |   1 +
>  arch/riscv/kernel/kgdb.c           | 382 +++++++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/traps.c          |   5 +
>  include/linux/kgdb.h               |   9 +
>  kernel/debug/debug_core.c          |  12 ++
>  kernel/debug/gdbstub.c             |  13 ++
>  lib/Kconfig.kgdb                   |   5 +
>  13 files changed, 885 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/gdb_xml.h
>  create mode 100644 arch/riscv/include/asm/kdebug.h
>  create mode 100644 arch/riscv/include/asm/kgdb.h
>  create mode 100644 arch/riscv/include/asm/parse_asm.h
>  create mode 100644 arch/riscv/kernel/kgdb.c

Looks like there's some comments on #3, so I'm going to drop this patch set and
assum there will be another version coming.

Thanks!

