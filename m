Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E006E126283
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 13:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8qnzZ+Np5eBCo9s81WnyP0pvUm+PIUtt/EaiH8TRaD0=; b=bYhF5r802As1TnTmYjxX+WNAij
	on7ELXVqpHfBortAIllk4oJtykIcBPn7Rywcu26ipyLPEFaDRQSK5exRFKkxWDjTRo6r7jt0Cjn2t
	7grvVgAHb4n03Z1Wq76MNr7aUNt1qVq6/rHFzjvisBrcd5j0+IhbfeqrnLehABrPxlmhiv+bZNcLt
	QF84sDrwZ3UgOCH5sOVsefSKYA6RIPztfqlEmN8Mo9gsO4zozg9s08WTUzhKZtSGteWI2w7LXN28F
	Mg3BmEcMvlCT1kVfpP7YW19Ivko3XUL6jpFF+T6Dcl09p0S+u7U93qjMjd3rk7480zD43lnq0dVd8
	9yTqly2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvCw-0008Gt-I1; Thu, 19 Dec 2019 12:47:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvCt-0008Gb-NQ
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 12:47:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id m24so5289301wmc.3
 for <linux-riscv@lists.infradead.org>; Thu, 19 Dec 2019 04:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8qnzZ+Np5eBCo9s81WnyP0pvUm+PIUtt/EaiH8TRaD0=;
 b=hRHExEz6i4Wmc7lrvRW/GPho8R6kAxjWo45k6GEyIu+thjMqoBReredTydusokjVC8
 tLVESeH0yhh/xsXFxKKbU/LM2FoWNIJL2o9Sq+qulfCMQqTaiwTAimIqhytDTjFcYJN7
 3zelznlZvDrUSUEPAZE3hdGKmT6UeNVGO2KuOHN08/6D7YjYbQwo6PFTTG7DXUy34Fyu
 XixB7aQ0BD+yv1w5bhaz6QKEircJGARg9ESu3zApgWmLJ7oPqFPz6or/hpy2/DpvN74p
 bANodqDrqZawykh+CWLZWpoq5n98BzdCXu4eUxFMyd2txoQ3kYymtbHVoPEFy27FWnKz
 kHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8qnzZ+Np5eBCo9s81WnyP0pvUm+PIUtt/EaiH8TRaD0=;
 b=aFBchjWSMNV6Gb0PQpua5s4+to2Jmnsobwswx4BIlvPmgpbBui/FlxzPuBBHF5mFEw
 pO6HpqRzBQxsY2aZuparEmPQO2nLPOW3Ubnfgs+WscRJHBdB8OPj1Y0X71YKVETAhjEq
 Ry0INlSvYwaap33yUt5kKQK+9V+ymHLC927cVgCddYAFEuvCP64P6KN1QcO2aoDAR4OZ
 evmoyXfvPYI1O7gdb8NZPYNvHbBeeN78k9zK2tK+C3OehJ9NACva+nYsv5eOslBCLp0x
 8HV1eyDzMMk9GDlrzklzNqi9hqq8Ph8nrnHed+Bk/Tjqo20IAzvdzblIvoYBOMg8JJTk
 JELA==
X-Gm-Message-State: APjAAAWOtYS3kxq01T3Ua5BEGv/HKx33CdZAzCtrCp/RR5/VLKHki3dg
 WRpBaQG/D2uIyayHAe6V8+KbRtK+Wn87h4sjR/dA+IPU
X-Google-Smtp-Source: APXvYqwpcai8f4meRh8wqCrAcMR/brkZjK/db9DCOysKkym+k/PdThNexWuh6WwH617satcBew8iSxohEbKabJHeO9U=
X-Received: by 2002:a1c:22c6:: with SMTP id i189mr10464350wmi.15.1576759625284; 
 Thu, 19 Dec 2019 04:47:05 -0800 (PST)
MIME-Version: 1.0
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 19 Dec 2019 14:46:29 +0200
Message-ID: <CAEn-LTqw=r7WotzzHJZou10O5mcCDs+TK_ep4hhyBbUnHMGMAg@mail.gmail.com>
Subject: Compiling 5.5-rc2: warning: "IRQ_TIMER" redefined
To: linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_044707_788888_67569DF2 
X-CRM114-Status: UNSURE (   4.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

While compiling modules for 5.5-rc2 in Fedora/RISCV I see compilation
warning. Similar was reported 10 days ago by kbuild test robot [0].
That points to a4c3733d32a72f11dee86d0731d7565aa6ebe22d ("riscv:
abstract out CSR names for supervisor vs machine mode").  The commit
added

[..]
#ifdef CONFIG_RISCV_M_MODE
[..]
#else /* CONFIG_RISCV_M_MODE */
[..]
# define IRQ_TIMER IRQ_S_TIMER
[..]
#endif /* CONFIG_RISCV_M_MODE */

There seems to be a few drivers that define IRQ_TIMER:

sound/pci/au88x0/au88x0.h
sound/pci/azt3328.h
drivers/net/fddi/skfp/h/skfbi.h
drivers/char/pcmcia/synclink_cs.c

Should we pick something different than IRQ_TIMER to avoid this clash?

david

[0] https://lkml.org/lkml/2019/12/9/24

BUILDSTDERR: In file included from sound/pci/au88x0/au8810.c:3:
BUILDSTDERR: sound/pci/au88x0/au88x0.h:52: warning: "IRQ_TIMER" redefined
BUILDSTDERR:    52 | #define IRQ_TIMER 0x1000
BUILDSTDERR:       |
BUILDSTDERR: In file included from ./arch/riscv/include/asm/ptrace.h:10,
BUILDSTDERR:                  from ./arch/riscv/include/asm/processor.h:11,
BUILDSTDERR:                  from ./arch/riscv/include/asm/irqflags.h:10,
BUILDSTDERR:                  from ./include/linux/irqflags.h:16,
BUILDSTDERR:                  from ./arch/riscv/include/asm/bitops.h:14,
BUILDSTDERR:                  from ./include/linux/bitops.h:26,
BUILDSTDERR:                  from ./include/linux/kernel.h:12,
BUILDSTDERR:                  from ./include/linux/list.h:9,
BUILDSTDERR:                  from ./include/linux/pci.h:32,
BUILDSTDERR:                  from sound/pci/au88x0/au88x0.h:8,
BUILDSTDERR:                  from sound/pci/au88x0/au8810.c:3:
BUILDSTDERR: ./arch/riscv/include/asm/csr.h:137: note: this is the
location of the previous definition
BUILDSTDERR:   137 | # define IRQ_TIMER IRQ_S_TIMER
BUILDSTDERR:       |

