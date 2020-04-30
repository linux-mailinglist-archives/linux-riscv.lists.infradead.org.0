Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF431BFDF1
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 16:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8GCWY92duqdcsv06uiJ2/8DfkZLpd16ozEeQxW5Bpg=; b=hFdgru3T6VTfxf
	Sp9dza4Ya6FwUImRKS2uh+pSze8RWw0YBCAmxwws0bz5f0eOnsXiPdWzz/+4q7+uqdnUz+D51vAqH
	F4SkEPESvrHlAYlTF214BK6phw362zhDK6KPwwONUg2tQYEnPGCf5B0aVoIP8ZBahB7OCLi8R42w/
	chCloU60RR3QewflcEFvNJ6ea18ZWAUQI1fxUEbd4HXuoWW+g4JIiTGiBznXFZt5kYhSxEqd0TEeS
	Jol/gyiCN/FIoy+B316aeowHpWiDcigMKWOSmHBUYK0BMS+gPH7mScmdzYU0spFORfROk9bGWvAMw
	Atdv7+QcjJ05Ui2ZZA4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUA6u-0004yz-Sp; Thu, 30 Apr 2020 14:24:20 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUA6c-0004kE-2H
 for linux-riscv@lists.infradead.org; Thu, 30 Apr 2020 14:24:03 +0000
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jUA6I-00086y-K3; Thu, 30 Apr 2020 16:23:42 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jUA6I-000JJ2-3f; Thu, 30 Apr 2020 16:23:42 +0200
Subject: Re: [PATCH bpf-next] bpf, riscv: Fix stack layout of JITed code on
 RV32
To: Xi Wang <xi.wang@gmail.com>, Luke Nelson <lukenels@cs.washington.edu>
References: <20200430005127.2205-1-luke.r.nels@gmail.com>
 <CAKU6vybAuF-oziH8oOu1oCv+j8SLOMWq2UdM6_kVCbeggLvxSA@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <61bfa5f6-eb21-3767-11c6-d8be46871c0e@iogearbox.net>
Date: Thu, 30 Apr 2020 16:23:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAKU6vybAuF-oziH8oOu1oCv+j8SLOMWq2UdM6_kVCbeggLvxSA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25798/Thu Apr 30 14:03:33 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_072402_116965_3EB7A3FF 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/30/20 4:14 AM, Xi Wang wrote:
> On Wed, Apr 29, 2020 at 5:51 PM Luke Nelson <lukenels@cs.washington.edu> wrote:
>>
>> This patch fixes issues with stackframe unwinding and alignment in the
>> current stack layout for BPF programs on RV32.
>>
>> In the current layout, RV32 fp points to the JIT scratch registers, rather
>> than to the callee-saved registers. This breaks stackframe unwinding,
>> which expects fp to point just above the saved ra and fp registers.
>>
>> This patch fixes the issue by moving the callee-saved registers to be
>> stored on the top of the stack, pointed to by fp. This satisfies the
>> assumptions of stackframe unwinding.
>>
>> This patch also fixes an issue with the old layout that the stack was
>> not aligned to 16 bytes.
>>
>> Stacktrace from JITed code using the old stack layout:
>>
>>    [   12.196249 ] [<c0402200>] walk_stackframe+0x0/0x96
>>
>> Stacktrace using the new stack layout:
>>
>>    [   13.062888 ] [<c0402200>] walk_stackframe+0x0/0x96
>>    [   13.063028 ] [<c04023c6>] show_stack+0x28/0x32
>>    [   13.063253 ] [<a403e778>] bpf_prog_82b916b2dfa00464+0x80/0x908
>>    [   13.063417 ] [<c09270b2>] bpf_test_run+0x124/0x39a
>>    [   13.063553 ] [<c09276c0>] bpf_prog_test_run_skb+0x234/0x448
>>    [   13.063704 ] [<c048510e>] __do_sys_bpf+0x766/0x13b4
>>    [   13.063840 ] [<c0485d82>] sys_bpf+0xc/0x14
>>    [   13.063961 ] [<c04010f0>] ret_from_syscall+0x0/0x2
>>
>> The new code is also simpler to understand and includes an ASCII diagram
>> of the stack layout.
>>
>> Tested on riscv32 QEMU virt machine.
>>
>> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> 
> Thanks for the fix!
> 
> Acked-by: Xi Wang <xi.wang@gmail.com> 

Applied, thanks everyone!

