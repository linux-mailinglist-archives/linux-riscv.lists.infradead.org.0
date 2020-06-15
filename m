Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1205F1FA31F
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jun 2020 23:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3+XZNwwgFRWN2YfgBwEC3ayNYLxxibOoTCejm5/GHWY=; b=pwMBIW17uH1V5peYdxGVDYtl2
	zFese+suY0VUyBfalu7o//6w+kSiC1v5uTBnV+ADZuUkic8tiMlQPbck9trltrPpT9rA8C6aCyKhG
	aKy/WwC0oVviyHXBPQKY5pXXpV0wSfq9i+1pKI0x73NhVl980NeSi/2DfsZKvEYnRiUrMc5J+0lZu
	NlxUvesQxTngsWtBeZhTSoMdXUALTqcmcM5o4Cl64s/oMxcFtpI19nUzsIiLMQyjAzFcXM2PNIIwg
	0rkq+P1W8j6kYomUea+YbqrRNmSkiBPETmMFkobcyajefmPO90yagOGInQ3r9yhKBjZcEQkot7d75
	YgxiONphA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkx78-0004hv-6a; Mon, 15 Jun 2020 21:57:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkx74-0004hG-T2
 for linux-riscv@lists.infradead.org; Mon, 15 Jun 2020 21:57:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id 10so8434642pfx.8
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jun 2020 14:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3+XZNwwgFRWN2YfgBwEC3ayNYLxxibOoTCejm5/GHWY=;
 b=VUaYUxCHIB99FCGZtex1432WECyI2mAyKaZV0DeKfdICp6jdhd5cGggKM0iy6sTP+S
 IXIReYqfCqyeiTV36w0eYXRL5sf2Ado4zz6F+qFQr0kavyIc+/xiCKlVv1zAsmyzQBmm
 U5pNlukcJbhvYokWPIUOm/3p0S+eXzqqMvKLwFSNj9mryLXhJuV/dYVXcOI2KQJDPYmC
 xWkof1oiLCjHUTJgo7AtxkE8LZbb41uXURN3JiF5lf7/b8C3GXW7HKqVr+TvhtSvKsLR
 JbUm+Y42Nkwg/DPToj8oT/AqjfnfFjLfPOFiM/O2BdzBVcrNtCGzrE/BlAa6fdyMgzim
 K2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3+XZNwwgFRWN2YfgBwEC3ayNYLxxibOoTCejm5/GHWY=;
 b=fegU3884rejcoCe39Ut79XcoFpRTGf0rCk25oZHNoV4BCpr7f716WyW8xjI0nnh4ny
 DHwp8DqhpuRsPy+AV9s+FE8hBMwkIycQGGYQlWn9Lriur9Y1T3j817iQ9pCRk2A6Zi/Y
 l9DEohYE/hmH1/ySSS1h4VNHuqgZpOMn6ZrlSuHK1KANlALZDuvKIeN9GuVb3iLBA+C7
 9Lc8yWDEPqg2YU+nrfIKl46jw5r4VSqFn5O3YvBRVvcpJJWUGg2/imFOEfq+/N9WbZpp
 y3GBdbuXuNTVwjErHSezBwjOXPD8lVtpIzx1XdjHISenpMO61thCvBdjUGp3k9SSM/gV
 H+qg==
X-Gm-Message-State: AOAM531PjvYEYy6AR4NZ/m2InNu2nZlT8287+tW0Xt24bmjs+EU0c88M
 agi8hW2+JzmSav84N5YJ4ss=
X-Google-Smtp-Source: ABdhPJyQcyN3op+rH0nbrDKoATRuWGkI1oYXTY9OJWje5wgokCdaDAl6t7F21JJs83LjpfHykyMW2g==
X-Received: by 2002:aa7:84cf:: with SMTP id x15mr24773327pfn.214.1592258270068; 
 Mon, 15 Jun 2020 14:57:50 -0700 (PDT)
Received: from localhost (g228.115-65-196.ppp.wakwak.ne.jp. [115.65.196.228])
 by smtp.gmail.com with ESMTPSA id
 ha16sm405421pjb.40.2020.06.15.14.57.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 14:57:49 -0700 (PDT)
Date: Tue, 16 Jun 2020 06:57:47 +0900
From: Stafford Horne <shorne@gmail.com>
To: Atish Patra <atishp@atishpatra.org>
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
Message-ID: <20200615215747.GO75760@lianli.shorne-pla.net>
References: <CAOnJCUJ_rA6TW0QgmDkXnrMoyKKMBygzs1sFQukuJ3mAF3Cu1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOnJCUJ_rA6TW0QgmDkXnrMoyKKMBygzs1sFQukuJ3mAF3Cu1w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_145754_940010_2E199912 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 12:28:11AM -0700, Atish Patra wrote:
> Hi,
> I encountered the following issue while booting 5.8-rc1 on Qemu for RV64.
> I added additional dump_stack and observed that it's happening in bpf free path.
> It happens always if CONFIG_DEBUG_VM is enabled. VM_BUG_ON_MM is
> compiled away without that.
> ------------------------------------------------------------------------
> forked to background, child pid 113
> [   10.328850] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted
> 5.8.0-rc1-dirty #732
> [   10.331739] Workqueue: events bpf_prog_free_deferred
> [   10.334133] Call Trace:
> [   10.338039] [<ffffffe000202698>] walk_stackframe+0x0/0xa4
> [   10.339988] [<ffffffe000202880>] show_stack+0x2e/0x3a
> [   10.340902] [<ffffffe00047074c>] dump_stack+0x72/0x8c
> [   10.341451] [<ffffffe0002db4ce>] mmap_assert_locked.part.13+0x14/0x1c
> [   10.342131] [<ffffffe0002db330>] walk_page_range_novma+0x0/0x4e
> [   10.342973] [<ffffffe000204f94>] set_direct_map_invalid_noflush+0x66/0x6e
> [   10.343917] [<ffffffe0002e0706>] __vunmap+0xe8/0x212
> [   10.344680] [<ffffffe0002e0882>] __vfree+0x22/0x6e
> [   10.345270] [<ffffffe0002e0902>] vfree+0x34/0x56
> [   10.345834] [<ffffffe00027d752>] __bpf_prog_free+0x2c/0x36
> [   10.346529] [<ffffffe0002801a2>] bpf_prog_free_deferred+0x74/0x8a
> [   10.347394] [<ffffffe000219c70>] process_one_work+0x13a/0x272
> [   10.348239] [<ffffffe00021a4b4>] worker_thread+0x50/0x2e4
> [   10.348900] [<ffffffe00021ed98>] kthread+0xfc/0x10a
> [   10.349470] [<ffffffe0002013da>] ret_from_exception+0x0/0xc
> [   10.354405] mm ffffffe001018600 mmap 0000000000000000 seqnum 0 task_size 0
> [   10.354405] get_unmapped_area 0000000000000000
> [   10.354405] mmap_base 0 mmap_legacy_base 0 highest_vm_end 0
> [   10.354405] pgd ffffffe001074000 mm_users 2 mm_count 1
> pgtables_bytes 8192 map_count 0
> [   10.354405] hiwater_rss 0 hiwater_vm 0 total_vm 0 locked_vm 0
> [   10.354405] pinned_vm 0 data_vm 0 exec_vm 0 stack_vm 0
> [   10.354405] start_code ffffffe000200000 end_code ffffffe00084acc2
> start_data 0 end_data ffffffe00106dfe4
> [   10.354405] start_brk 0 brk ffffffe0010bd6d0 start_stack 0
> [   10.354405] arg_start 0 arg_end 0 env_start 0 env_end 0
> [   10.354405] binfmt 0000000000000000 flags 0 core_state 0000000000000000
> [   10.354405] ioctx_table 0000000000000000
> [   10.354405] exe_file 0000000000000000
> [   10.354405] tlb_flush_pending 0
> [   10.354405] def_flags: 0x0()
> [   10.369325] ------------[ cut here ]------------
> [   10.370763] kernel BUG at include/linux/mmap_lock.h:81!
> [   10.375235] Kernel BUG [#1]
> [   10.377198] Modules linked in:
> [   10.378931] CPU: 3 PID: 51 Comm: kworker/3:1 Not tainted 5.8.0-rc1-dirty #732
> [   10.380179] Workqueue: events bpf_prog_free_deferred
> [   10.381270] epc: ffffffe0002db4d4 ra : ffffffe0002db4d4 sp : ffffffe3eaea7c70
> [   10.382561]  gp : ffffffe00106d950 tp : ffffffe3ef752f80 t0 :
> ffffffe0010836e8
> [   10.383996]  t1 : 0000000000000064 t2 : 0000000000000000 s0 :
> ffffffe3eaea7c90
> [   10.385119]  s1 : ffffffe001018600 a0 : 0000000000000289 a1 :
> 0000000000000020
> [   10.386099]  a2 : 0000000000000005 a3 : 0000000000000000 a4 :
> ffffffe001012758
> [   10.387294]  a5 : 0000000000000000 a6 : 0000000000000102 a7 :
> 0000000000000006
> [   10.388265]  s2 : ffffffe3f00674c0 s3 : ffffffe00106e108 s4 :
> ffffffe00106e100
> [   10.389250]  s5 : ffffffe00106e908 s6 : 0000000000000000 s7 :
> 6db6db6db6db6db7
> [   10.390272]  s8 : 0000000000000001 s9 : ffffffe00021a4f8 s10:
> ffffffffffffffff
> [   10.391293]  s11: ffffffe3f0066600 t3 : 000000000001a7a8 t4 :
> 000000000001a7a8
> [   10.392314]  t5 : 0000000000000000 t6 : ffffffe00107b76b
> [   10.393096] status: 0000000000000120 badaddr: 0000000000000000
> cause: 0000000000000003
> [   10.397755] ---[ end trace 861659596ac28841 ]---
> ---------------------------------------------------------------------------------------------------
> 
> I haven't had the chance to bisect to figure out which commit caused
> the issue. Just wanted
> to check if it is a known issue already.

Hi Atish,

Note, I am getting the same (just now) when booting v5.8-rc1 on OpenRISC.  If
you have any updates please post back.  I will try to look into this today or
tomorrow.

-Stafford

