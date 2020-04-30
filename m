Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57CB1BEE31
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 04:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ir92wbANJ/6o1M0DWfLzJyw4ihwe64y3qEPUHFY6lx0=; b=UrwgFE12tTrZC/ow/LcJkBFFH
	H6mD7MrVcO5Mpkq5gUf0evWLXe2S3Er9YAlReYneHexQvt3pu0TTms+pvVkMzOJTwp82RmHCsWtFd
	HfsBa9trsKeFBMCFtD8LhE63A6Y/gd7bl/C1uf4X17CX2vEB8O2DqjbRsoTKGDzz3bxhx7zDfzPgp
	22hzTsQN1UKknzSGSKmp4Bmz57pgh1aPbv+ZdHNBfZjkVuoZhe0C9z60gqybSAV7jDnx4eaLaBmbH
	o74cKHQ5cAVW5BCTyJ5dmsEJFylb+3r5ZttOIDoVe9uNe0AgCTH7xZ4oN2TkSXclRUey5PXrpTlO0
	eKhSJ8ZGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTyjo-0005NM-P9; Thu, 30 Apr 2020 02:15:44 +0000
Received: from mail-ej1-f67.google.com ([209.85.218.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTyjk-0005N0-RC
 for linux-riscv@lists.infradead.org; Thu, 30 Apr 2020 02:15:42 +0000
Received: by mail-ej1-f67.google.com with SMTP id nv1so3360062ejb.0
 for <linux-riscv@lists.infradead.org>; Wed, 29 Apr 2020 19:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ir92wbANJ/6o1M0DWfLzJyw4ihwe64y3qEPUHFY6lx0=;
 b=Sy2EVLT5LzXV8LjxgSJ9G8NxTKngGnW6k+QwFS05l7YTRiqHaKiFHIjRv8pN9ryXFe
 QivSXcLAZLapkBynoOHkxMTUHmd7WXN6Z0QPVzbfxbAtuBNkQaNS+aV98DDRTjyhXQYg
 iG3ultEzl6rv0+APtBW8V9S5v8kc4bakTLgT2I9DtQMJO1Z9GTMGZ1aJwjVF0XrLtzpl
 xJh3hopzCBgIu3C+z74wLopSPRd0C1m8IQd1kUUc4U/h7fstEuEsVeEnEgN1W9Pa3+hH
 U18H78hGtzuQTvYtvUHorogjnpNQIAwM0xMJmqisqANZ5O7gvQVZdiH1TdYTT8vOxRj/
 ktig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ir92wbANJ/6o1M0DWfLzJyw4ihwe64y3qEPUHFY6lx0=;
 b=FE9bNsskaWDvqu/mueWHbxILDL4N0Q8gUDL2WxFfiUO2zlAJrZkz5LD5hdiugVQFC7
 FYUCjxecIw/Q6h+Kh+oAWCbajsjFTSmuv8ybm+W27PuzBtMd8mmUSTvaIoaZKBUKdmcM
 ccfMkyG7/o5HyGtfU36CVJvT/KcMyqRKDIwQYORFXeDA01T488JX29qMdQI9B6NNkR5+
 kANrY1VIn/6sMh2XxIuEL3cMAZ1JRCCMe7dKU9phhS2XzWdFoUNC5hswE4FBLJuaOznE
 li4/SF+cNEhCS8RSS+TJd+nGYg3XW6T74liTwLvavN+NvU/Ozy3JhvD76ERtzVo+2SSx
 Lpow==
X-Gm-Message-State: AGi0PubFLQmIws/vVwnFlYkihw67CBYpR0zLyuBhD9FMaOetJtxWInGQ
 GUpED8mHZLPOZpmui3z/UhXabM8Nz8X4gvZjg6I=
X-Google-Smtp-Source: APiQypI11+jX0S3ayO0TfdWyeZ78O5iC/q+eFCrIdKkni4792l/Bh4dBCcV1svLlgxcn4oRSrfXzbY8f15mdCbFl2qw=
X-Received: by 2002:a17:906:2604:: with SMTP id
 h4mr581932ejc.307.1588212925821; 
 Wed, 29 Apr 2020 19:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200430005127.2205-1-luke.r.nels@gmail.com>
In-Reply-To: <20200430005127.2205-1-luke.r.nels@gmail.com>
From: Xi Wang <xi.wang@gmail.com>
Date: Wed, 29 Apr 2020 19:14:49 -0700
Message-ID: <CAKU6vybAuF-oziH8oOu1oCv+j8SLOMWq2UdM6_kVCbeggLvxSA@mail.gmail.com>
Subject: Re: [PATCH bpf-next] bpf,
 riscv: Fix stack layout of JITed code on RV32
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_191540_877756_51E5D948 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xi.wang[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.67 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 5:51 PM Luke Nelson <lukenels@cs.washington.edu> wrote:
>
> This patch fixes issues with stackframe unwinding and alignment in the
> current stack layout for BPF programs on RV32.
>
> In the current layout, RV32 fp points to the JIT scratch registers, rather
> than to the callee-saved registers. This breaks stackframe unwinding,
> which expects fp to point just above the saved ra and fp registers.
>
> This patch fixes the issue by moving the callee-saved registers to be
> stored on the top of the stack, pointed to by fp. This satisfies the
> assumptions of stackframe unwinding.
>
> This patch also fixes an issue with the old layout that the stack was
> not aligned to 16 bytes.
>
> Stacktrace from JITed code using the old stack layout:
>
>   [   12.196249 ] [<c0402200>] walk_stackframe+0x0/0x96
>
> Stacktrace using the new stack layout:
>
>   [   13.062888 ] [<c0402200>] walk_stackframe+0x0/0x96
>   [   13.063028 ] [<c04023c6>] show_stack+0x28/0x32
>   [   13.063253 ] [<a403e778>] bpf_prog_82b916b2dfa00464+0x80/0x908
>   [   13.063417 ] [<c09270b2>] bpf_test_run+0x124/0x39a
>   [   13.063553 ] [<c09276c0>] bpf_prog_test_run_skb+0x234/0x448
>   [   13.063704 ] [<c048510e>] __do_sys_bpf+0x766/0x13b4
>   [   13.063840 ] [<c0485d82>] sys_bpf+0xc/0x14
>   [   13.063961 ] [<c04010f0>] ret_from_syscall+0x0/0x2
>
> The new code is also simpler to understand and includes an ASCII diagram
> of the stack layout.
>
> Tested on riscv32 QEMU virt machine.
>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Thanks for the fix!

Acked-by: Xi Wang <xi.wang@gmail.com>

