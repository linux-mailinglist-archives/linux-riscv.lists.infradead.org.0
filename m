Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38491FA7F3
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 06:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ubnHkD9DG02aCbYPNMYaQ2YdFHg88ZgrHgAJ+LYiY1U=; b=D+4RhJdiwZLLsUCZXdFxvMQgJ
	akEdqpqhszSwmXgotZ/dGwBV+cGFGhmBJn6c3x+CHLrsPqmUdvIWDtGGJTQgoRXPmNk37PAmBn6Bd
	wY1l6DqHxsvc5dQTg7sQy8Cd3prwNjdSCVH9oK75Q+VYWAqVfcBxnhMIIFEyLWj3HzaPnqgyLL33H
	dgeTXL6kbtNoxctmHX7VqB/gRcn1LWgJQTQMX+0rNm3Kzg9t2BFiwhnY8RD5q4+QuDqUHJ1qcyGdE
	gFZ0b+1WobRBts08agWZNouQ3F3pPzXllJV4jMZXCN8x3by5CBDUVl2ppwTTP+EKcVJVUdiVy15fY
	7qv9Gb6hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl3Z6-0006it-8l; Tue, 16 Jun 2020 04:51:16 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl3Z2-0006iJ-Qc
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 04:51:14 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d6so969853pjs.3
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jun 2020 21:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ubnHkD9DG02aCbYPNMYaQ2YdFHg88ZgrHgAJ+LYiY1U=;
 b=bSrODFb5wwB33xQkJsdV0utQoM3fLBdROaP8iPfVFMXqxm3ym/GjzKGHqRFmSsHmqN
 N8gDl58aM5CaMThTuvZNa6ABN0/G6kKRo1zxIhr2yq8GxzpMHADPynFbnVOj5dMq9Kc6
 FN76fcsyYUA4tsndm+S/3gn3zmkDnPc2JMyZ0uqVdOQAZ/jGaeWEVfkPQXHjhJBDCnDH
 Y6WDEaCRNJ1+Ddc/gLFZAWygOXjhGFLoAl6JBKuSx2z8bPEs/m/nPo8PX3Kgp2zO9ojY
 eOicQxkUbTpJvc+Vhixo9DqeAaXxgoyuM1DAtDtQaY8dGaugT2JoeF8skRSIuKtGlSTL
 vuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ubnHkD9DG02aCbYPNMYaQ2YdFHg88ZgrHgAJ+LYiY1U=;
 b=AItL6zctyyDJFzvtdzsRML7gS8fFqyFXe/7QZpl1Sxv3omlnr3NA0cFCPnDCbghXa1
 FUSK055ksMfLJLA1irvm5qSsYeqUoYOswO71UnCZa4nwDh+IU98LObRAvXYe3L+V/6VI
 /JOKCHrc8kFwvYbbDoPsSfBDjjGhvlhllQooPYPCAqBgw1ZYaWF2LQUMXtkcDZ15GWQA
 Gr76f4H1wIS2WDIZVhniT0+XNj7HrUUWyao0rinpUggVta9UJYDTo0l4dqAOa3hek9uI
 m8uBnyp25n060ZjJm2oh9kySlb65cNvJkZCY6hdwtSQ6q1Tpcza9Rzn/O6lZFg/TjZWM
 E4gg==
X-Gm-Message-State: AOAM533T2MBpStFmx/v6PadR3KxUXc1ptnyTYstKrTBCY2xR1UKrwT3e
 gBBEKo7PrcuP4WyqXy5ElkY=
X-Google-Smtp-Source: ABdhPJwH/z1EhWtEaitOQeGOo1S00/uQ2ofSsiTiUgEj07FLsZi23mQQzWqLQJAwJmaUHukgEiSIPg==
X-Received: by 2002:a17:90a:8c4:: with SMTP id 4mr1143196pjn.64.1592283071945; 
 Mon, 15 Jun 2020 21:51:11 -0700 (PDT)
Received: from localhost (g228.115-65-196.ppp.wakwak.ne.jp. [115.65.196.228])
 by smtp.gmail.com with ESMTPSA id
 l14sm999198pjh.50.2020.06.15.21.51.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 21:51:11 -0700 (PDT)
Date: Tue, 16 Jun 2020 13:51:08 +0900
From: Stafford Horne <shorne@gmail.com>
To: Atish Patra <atishp@atishpatra.org>
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
Message-ID: <20200616045108.GP75760@lianli.shorne-pla.net>
References: <CAOnJCUJ_rA6TW0QgmDkXnrMoyKKMBygzs1sFQukuJ3mAF3Cu1w@mail.gmail.com>
 <20200615215747.GO75760@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200615215747.GO75760@lianli.shorne-pla.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_215112_866512_C22F52A9 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shorne[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Topel <bjorn.topel@gmail.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Michel Lespinasse <walken@google.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 06:57:47AM +0900, Stafford Horne wrote:
> On Mon, Jun 15, 2020 at 12:28:11AM -0700, Atish Patra wrote:
> > Hi,
> > I encountered the following issue while booting 5.8-rc1 on Qemu for RV64.
> > I added additional dump_stack and observed that it's happening in bpf free path.
> > It happens always if CONFIG_DEBUG_VM is enabled. VM_BUG_ON_MM is
> > compiled away without that.
> > ------------------------------------------------------------------------
> > forked to background, child pid 113
> > [   10.328850] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted
> > 5.8.0-rc1-dirty #732
> > [   10.331739] Workqueue: events bpf_prog_free_deferred
> > [   10.334133] Call Trace:
> > [   10.338039] [<ffffffe000202698>] walk_stackframe+0x0/0xa4
> > [   10.339988] [<ffffffe000202880>] show_stack+0x2e/0x3a
> > [   10.340902] [<ffffffe00047074c>] dump_stack+0x72/0x8c
> > [   10.341451] [<ffffffe0002db4ce>] mmap_assert_locked.part.13+0x14/0x1c
> > [   10.342131] [<ffffffe0002db330>] walk_page_range_novma+0x0/0x4e
> > [   10.342973] [<ffffffe000204f94>] set_direct_map_invalid_noflush+0x66/0x6e
> > [   10.343917] [<ffffffe0002e0706>] __vunmap+0xe8/0x212
> > [   10.344680] [<ffffffe0002e0882>] __vfree+0x22/0x6e
> > [   10.345270] [<ffffffe0002e0902>] vfree+0x34/0x56
> > [   10.345834] [<ffffffe00027d752>] __bpf_prog_free+0x2c/0x36
> > [   10.346529] [<ffffffe0002801a2>] bpf_prog_free_deferred+0x74/0x8a
> > [   10.347394] [<ffffffe000219c70>] process_one_work+0x13a/0x272
> > [   10.348239] [<ffffffe00021a4b4>] worker_thread+0x50/0x2e4
> > [   10.348900] [<ffffffe00021ed98>] kthread+0xfc/0x10a
> > [   10.349470] [<ffffffe0002013da>] ret_from_exception+0x0/0xc
> > [   10.354405] mm ffffffe001018600 mmap 0000000000000000 seqnum 0 task_size 0
> > [   10.354405] get_unmapped_area 0000000000000000
> > [   10.354405] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
> > [   10.354405] pgd ffffffe001074000 mm_users 2 mm_count 1
> > pgtables_bytes 8192 map_count 0
> > [   10.354405] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
> > [   10.354405] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
> > [   10.354405] start_code ffffffe000200000 end_code ffffffe00084acc2
> > start_data 0 end_data ffffffe00106dfe4
> > [   10.354405] start_brk 0 brk ffffffe0010bd6d0 start_stack 0
> > [   10.354405] arg_start 0 arg_end 0 env_start 0 env_end 0
> > [   10.354405] binfmt 0000000000000000 flags 0 core_state 0000000000000000
> > [   10.354405] ioctx_table 0000000000000000
> > [   10.354405] exe_file 0000000000000000
> > [   10.354405] tlb_flush_pending 0
> > [   10.354405] def_flags: 0x0()
> > [   10.369325] ------------[ cut here ]------------
> > [   10.370763] kernel BUG at include/linux/mmap_lock.h:81!
> > [   10.375235] Kernel BUG [#1]
> > [   10.377198] Modules linked in:
> > [   10.378931] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted 5.8.0-rc1-dirty #732
> > [   10.380179] Workqueue: events bpf_prog_free_deferred
> > [   10.381270] epc: ffffffe0002db4d4 ra : ffffffe0002db4d4 sp : ffffffe3eaea7c70
> > [   10.382561]  gp : ffffffe00106d950 tp : ffffffe3ef752f80 t0 :
> > ffffffe0010836e8
> > [   10.383996]  t1 : 0000000000000064 t2 : 0000000000000000 s0 :
> > ffffffe3eaea7c90
> > [   10.385119]  s1 : ffffffe001018600 a0 : 0000000000000289 a1 :
> > 0000000000000020
> > [   10.386099]  a2 : 0000000000000005 a3 : 0000000000000000 a4 :
> > ffffffe001012758
> > [   10.387294]  a5 : 0000000000000000 a6 : 0000000000000102 a7 :
> > 0000000000000006
> > [   10.388265]  s2 : ffffffe3f00674c0 s3 : ffffffe00106e108 s4 :
> > ffffffe00106e100
> > [   10.389250]  s5 : ffffffe00106e908 s6 : 0000000000000000 s7 :
> > 6db6db6db6db6db7
> > [   10.390272]  s8 : 0000000000000001 s9 : ffffffe00021a4f8 s10:
> > ffffffffffffffff
> > [   10.391293]  s11: ffffffe3f0066600 t3 : 000000000001a7a8 t4 :
> > 000000000001a7a8
> > [   10.392314]  t5 : 0000000000000000 t6 : ffffffe00107b76b
> > [   10.393096] status: 0000000000000120 badaddr: 0000000000000000
> > cause: 0000000000000003
> > [   10.397755] ---[ end trace 861659596ac28841 ]---
> > ---------------------------------------------------------------------------------------------------
> > 
> > I haven't had the chance to bisect to figure out which commit caused
> > the issue. Just wanted
> > to check if it is a known issue already.
> 
> Hi Atish,
> 
> Note, I am getting the same (just now) when booting v5.8-rc1 on OpenRISC.  If
> you have any updates please post back.  I will try to look into this today or
> tomorrow.

I have bisected this to, 42fc541404f249778e752ab39c8bc25fcb2dbe1e:

  mmap locking API: add mmap_assert_locked() and mmap_assert_write_locked()

This should have just changed the existing lockdep api's but something has
changed.  I haven't had time to look at it yet.

Ccing: Michel Lespinasse <walken@google.com>

-Stafford

