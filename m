Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EAB9068A
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 19:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=od85NtLOdatiaqdapSPDWxPlW5M1VvV7V6wuwC3WfH8=; b=PvDC9HQ5bZHE8R
	+G4OeeqLP416brANo3ygJfanjoIMemVT7dvmMMJIkaeoZuRt2H+pkIg2sloqbe67nHgEJeYXumrlo
	eVA5lIFG9H/5+EhnDg6F9iHglsGOlTXUajrd9EewlyDeyLTvq1349gmKr9RfbJfFTetePG9RjfxjE
	+47yRQvLPmw6AhTtURYWg4G6kbLPDv4rEY/LEx+UVgagoCklgwAvNt1aO7Yu0P/caJ/hep5o50iDQ
	qtRxyks1lYS16Kt8bPovoaVdawuHBYamixBWHeNTKk097tPK4I3jbzItSzVhzlGcZZzpUj/ubT/gp
	as41M8jhexsIUC8X5XFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfnk-0002lG-Ut; Fri, 16 Aug 2019 17:14:08 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfni-0002kW-2E
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 17:14:07 +0000
Received: by mail-io1-xd42.google.com with SMTP id s21so7622696ioa.1
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 10:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=P1RIaHOqGWyyl0LvEugaw544sTC25Cpr3BLhnNSKbO4=;
 b=G7B+K2WjY9RlUlzaAnqOuGPgUjdTR9RckXKzQpOT2brfVUdN+XfRKMj4LIqCeKcMwY
 5wL7YHYsWryoT9OLwEE/42kvdCggJOgiDaQulrteM7ZK21nW8dbEuSOpz0NXVyHrcrbf
 1vdxpfe58WRpNdCzs7vgJfnCA8bgUR0V+X5CMnFGvMz5mgaif2gYTpOSNSOb9XfkVkdB
 KDShek+ojIQ4Hf34NrJy6/c2ZMJKe5mzh1UVDpMBXf3ZdyHZepAeLMt2U28K3eUmrXtl
 jeBSpwP/0W9vxEtB/531QhxJc0vcVO4ioFfZ+3Kv4uZaUO0yv28yFEXlPBMhKu85DmC/
 C7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=P1RIaHOqGWyyl0LvEugaw544sTC25Cpr3BLhnNSKbO4=;
 b=SQCrUMVk1DBVftFkmQmnzHCIsca6eZP4xM6cgBrpzwOLevQiLR3BEgJCy3IcubVX41
 jug3gTiFIRJoFbcJ4sY+OfaImKCgtWYXoEq4xmCIM19aQApQ01b2AtJk7EkID3SZ6e+z
 vHxxPXLv4J+hlCmeNxkWqrWdxvHRYNUveWOPzim8xN5bx00w3WFp3kKadomCyoZYq63v
 ZE+yYBNgOwyLdEg+d4otI0NBhjQDG97YQUFgKD+Ir8oSgDwxkMkg8yp9K8lwmgY9v5Y7
 EvjmRZFqCQs9et8N0JOt8eBkURF+zlOdH0hmQP27Gbnax2mrQYYx+7AL4KN+0JqzF/8h
 Ytyg==
X-Gm-Message-State: APjAAAVszGk8Jz2AfaOZ8u4N6W0BO8bdudb9mKnBXNwG1wk5jOX1G/0Z
 A9F+BcHHpdn2M6FsnoEn7c8VYQ==
X-Google-Smtp-Source: APXvYqyGU90OasXL2SfKiCVDJt51GDcakg9jaNR01R5cy/jXwPzDEB4rhvbBPTJ/NuD7LZkKPqAbTA==
X-Received: by 2002:a5e:df06:: with SMTP id f6mr3225296ioq.93.1565975642550;
 Fri, 16 Aug 2019 10:14:02 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 w6sm5716237iob.29.2019.08.16.10.14.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 10:14:01 -0700 (PDT)
Date: Fri, 16 Aug 2019 10:14:01 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH V3 0/3] riscv: Add perf callchain support
In-Reply-To: <cover.1558081981.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1908161008450.18249@viisi.sifive.com>
References: <cover.1558081981.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_101406_170179_6F3396FE 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>, Guo Ren <guoren@kernel.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Mao Han,

On Fri, 17 May 2019, Mao Han wrote:

> This patch set add perf callchain(FP/DWARF) support for RISC-V.
> It comes from the csky version callchain support with some
> slight modifications. The patchset base on Linux 5.1.
> 
> CC: Palmer Dabbelt <palmer@sifive.com>
> CC: linux-riscv <linux-riscv@lists.infradead.org>
> CC: Christoph Hellwig <hch@lst.de>
> CC: Guo Ren <guoren@kernel.org>

I tried these patches on v5.3-rc4, both on the HiFive Unleashed board 
with a Debian-based rootfs and QEMU rv64 with a Fedora-based rootfs.  For 
QEMU, I used defconfig, and for the HiFive Unleashed, I added a few more 
Kconfig directives; and on both, I enabled CONFIG_PERF_EVENTS.  I built 
the perf tools from the kernel tree.

Upon running "/root/bin/perf record -e cpu-clock --call-graph fp 
/bin/ls", I see the backtraces below.  The first is on the HiFive 
Unleashed, the second is on QEMU.  

Could you take a look and tell me if you see similar issues?  And if not, 
could you please walk me through your process for testing these patches on 
rv64, so I can reproduce it here?


thanks,

- Paul


# /root/bin/perf record -e cpu-clock --call-graph fp /bin/ls
[  213.258888] Unable to handle kernel paging request at virtual address ffffffd2d979000c
[  213.266025] Oops [#1]
[  213.268278] Modules linked in:
[  213.271323] CPU: 2 PID: 165 Comm: ls Not tainted 5.3.0-rc4-00006-g2615b94055fc #164
[  213.278961] sepc: ffffffe0005bde76 ra : ffffffe0005bde84 sp : ffffffe1f609d870
[  213.286166]  gp : ffffffe000dbe6c0 tp : ffffffe1f60fa600 t0 : 0000000000046000
[  213.293372]  t1 : 0000000000000002 t2 : 0000002aaaac4890 s0 : ffffffe1f609d8b0
[  213.300579]  s1 : ffffffe1f609d8d8 a0 : 0000000000000004 a1 : 0000000000000000
[  213.307785]  a2 : 10ef8552d9790004 a3 : 0000000000000018 a4 : 0000000000000018
[  213.314991]  a5 : 0000000000000003 a6 : 0000000000000001 a7 : ffffffe1f7b685e0
[  213.322198]  s2 : 10ef8552d9790014 s3 : 0000003fffffffff s4 : 0000000000001ff8
[  213.329404]  s5 : b7e9595db7f9e15f s6 : ffffffe000dbe128 s7 : ffffffe1f8d6f820
[  213.336610]  s8 : 00000031a394a3e8 s9 : ffffffe000656150 s10: 0000000200000120
[  213.343816]  s11: 0000002aaaabc938 t3 : ffffffe1f7b685c0 t4 : 0000000000000001
[  213.351021]  t5 : 0000000000000008 t6 : 0000000000000000
[  213.356319] sstatus: 0000000200000100 sbadaddr: ffffffd2d979000c scause: 000000000000000d
[  213.364482] ---[ end trace f325867b8e0786aa ]---
[  213.369083] Kernel panic - not syncing: Fatal exception in interrupt
[  213.375421] SMP: stopping secondary CPUs
[  213.379336] ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---


# /root/bin/perf record -e cpu-clock --call-graph fp /bin/ls
[ 3465.349655] Unable to handle kernel paging request at virtual address d9bfd43b47718688
[ 3465.352356] Oops [#1]
[ 3465.353375] Modules linked in:
[ 3465.354496] CPU: 0 PID: 9501 Comm: ls Not tainted 5.3.0-rc4-00004-g3bfea1b43363 #165
[ 3465.355904] sepc: ffffffe000039a0a ra : ffffffe000039a18 sp : ffffffe078c5b5e0
[ 3465.361041]  gp : ffffffe000837760 tp : ffffffe078d88940 t0 : 0000000000046000
[ 3465.366104]  t1 : 0000000000000002 t2 : 000000004387194a s0 : ffffffe078c5b620
[ 3465.366839]  s1 : ffffffe078c5b648 a0 : 0000000000000004 a1 : 0000000000000000
[ 3465.369101]  a2 : d9bfd43b47718680 a3 : 0000000000000690 a4 : 0000000000000018
[ 3465.370949]  a5 : 0000000000000003 a6 : 0000000000000001 a7 : ffffffe0743b16d0
[ 3465.371650]  s2 : d9bfd43b47718690 s3 : 0000003fffffffff s4 : 0000000000001ff8
[ 3465.372658]  s5 : e85970cf9e9fbbc8 s6 : ffffffe0008371c8 s7 : ffffffe07a1527a0
[ 3465.373570]  s8 : 00000326c7b3d418 s9 : ffffffe0000d3326 s10: 0000000000000120
[ 3465.377102]  s11: ffffffe078cb4880 t3 : ffffffe0743b16c0 t4 : 0000000000000001
[ 3465.378125]  t5 : 0000000000000008 t6 : ffffffe078c5bd60
[ 3465.380603] sstatus: 0000000000000100 sbadaddr: d9bfd43b47718688 scause: 000000000000000d
[ 3465.382872] ---[ end trace f0ff9969d564eb82 ]---
[ 3465.383998] Kernel panic - not syncing: Fatal exception in interrupt
[ 3465.385812] SMP: stopping secondary CPUs
[ 3465.394408] ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
