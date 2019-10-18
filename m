Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626BBDBD80
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 08:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhmoxpiWUpYCv5RZI91J6XSvaDRjKmVbhkdP7igTAR8=; b=EG3VWVMWLnGw9k
	H8l5ISC/Z88VW15w7vT4bTe3zNU01DFP2kGjN6hBsdx/5sVBk6342j99UF90jhhBcx7F5RBv0ReeT
	XwjlQi7exnVpVXkEXj3H8+IgEHiMoWLf3rQWmqcxRaRIn2qX19T3n+miXLsifpsw+W0slBKmR4AFI
	gUFLPtqaHR6EU4JMQOb6YYndL0OWn9w649q1RFywMdZGe3q2SvH8cXlYX4ONU1hXUI32/wp8aBEee
	IR/2pEpEqKdwYe8TJKmKVBFngN14Zj5S9z/gCD/8i+psdtCoZngeMpfdMOui6fQjBp+aEOa57z4XS
	VZHzI1S/2vHYZBGvgR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLLPH-0006a3-FS; Fri, 18 Oct 2019 06:06:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLLPD-0006ZF-SQ
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 06:06:33 +0000
Received: by mail-io1-xd41.google.com with SMTP id r15so2343848iod.9
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 23:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=O0YWLx1kD/F6QW3/VV+7nUBXVt/vWL0doC9Fcyl1Wqs=;
 b=Kl/m7Y/ajU/WtKp6CuNso3JHk66JxIhKK8JZ6DGeotQKmRmSwQNeMQ/yz6ud9qH6uX
 DCOr1spOt7BK5yTOKRAJzEt5auJt+CBZNwb1qtOqk+q38gGLCf5F9ZJBmkVp74eqDFwN
 7hhszy0FyXw2NeiHz2w3dTy76MwvVrSU8OpufwBs0B47+y1v6s6SVS23KMPJdqlZci5A
 +mOb5cRrzygUTqOaLIJz8URvLPti/p6BRP8AfK0j2ZyndvJpSD934ortXdxwKRSJb7+P
 v7Jr/kpkestXDCCfg/dlsl52p5XdSVP4NCkm/Vqd/SaCSTzosydZDdHLRxMsbPLxfUBh
 sKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=O0YWLx1kD/F6QW3/VV+7nUBXVt/vWL0doC9Fcyl1Wqs=;
 b=YBbXvQ1ISvy9AW0i+TCQoPn7J14AkwGd1GPl1H+s2rJI98jAzqRdb40GMIPyEp8vR3
 0dCvSKalDSM2IvnQ32dMLdDe51ZV3Fh3Gnk5V2+8fgProg/pzP610SEjo1NiQmHTn3gA
 52uuDTzgZrI6fd4bKTm3aXVPqVqNc7Rr43QLb5KWt3H+z+A8lhgkFaLtZZuWELlG/2Ke
 EnSUDEygDGc6/WQQGu8QBTiMEfSyoZGEL1rMwXSAaBF1W2Pz2nMw64PyQTSF7q4OVsV8
 xmB/W6ZvnW69k0APoHw0XJaNay/E+tc2yp2Xrbt5Rqk16Pau2DD0er1YzV8bJOsDtih3
 IMBA==
X-Gm-Message-State: APjAAAWZs0ja4Ecqvt+rwSB1HY/gpJD/1rJEtf4K8JuclI8CsL/bS/Ke
 lrRmDwJf//82IlUPie96dbwb9Q==
X-Google-Smtp-Source: APXvYqy+KgLjTQErLSCPcrhJFv8Hc2JXme03IT6wtx/F7tDJvZb74d6AnF09cSPWFizqEJ5qwmAKdA==
X-Received: by 2002:a6b:cac1:: with SMTP id a184mr3760620iog.297.1571378790468; 
 Thu, 17 Oct 2019 23:06:30 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id n26sm2079036ili.8.2019.10.17.23.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 23:06:29 -0700 (PDT)
Date: Thu, 17 Oct 2019 23:06:28 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Subject: Re: [PATCH 5/8] riscv: add missing prototypes
In-Reply-To: <20191018041501.cuyyhcm23dsihcif@ltop.local>
Message-ID: <alpine.DEB.2.21.9999.1910172306180.3026@viisi.sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-6-paul.walmsley@sifive.com>
 <20191018041501.cuyyhcm23dsihcif@ltop.local>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_230631_979501_44D1618E 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019, Luc Van Oostenryck wrote:

> On Thu, Oct 17, 2019 at 05:49:26PM -0700, Paul Walmsley wrote:
> > sparse identifies these missing prototypes when building arch/riscv:
> > 
> > arch/riscv/kernel/cpu.c:149:29: warning: symbol 'cpuinfo_op' was not declared. Should it be static?
> > arch/riscv/kernel/irq.c:27:29: warning: symbol 'do_IRQ' was not declared. Should it be static?
> > arch/riscv/kernel/irq.c:57:13: warning: symbol 'init_IRQ' was not declared. Should it be static?
> > arch/riscv/kernel/syscall_table.c:15:6: warning: symbol 'sys_call_table' was not declared. Should it be static?
> > arch/riscv/kernel/time.c:15:13: warning: symbol 'time_init' was not declared. Should it be static?
> > arch/riscv/kernel/smpboot.c:135:24: warning: symbol 'smp_callin' was not declared. Should it be static?
> > arch/riscv/kernel/smp.c:72:5: warning: symbol 'setup_profiling_timer' was not declared. Should it be static?
> > arch/riscv/mm/init.c:151:7: warning: symbol 'trampoline_pg_dir' was not declared. Should it be static?
> > arch/riscv/mm/init.c:157:7: warning: symbol 'early_pg_dir' was not declared. Should it be static?
> > arch/riscv/kernel/process.c:32:6: warning: symbol 'show_regs' was not declared. Should it be static?
> > arch/riscv/kernel/ptrace.c:151:6: warning: symbol 'do_syscall_trace_enter' was not declared. Should it be static?
> > arch/riscv/kernel/ptrace.c:165:6: warning: symbol 'do_syscall_trace_exit' was not declared. Should it be static?
> > 
> > Fix by adding the missing prototypes to the appropriate header files.
> 
> For functions defined in C but used ony in assembly, you can also simply mark
> them as '__visible'  (aka __attribute__((exrernally_visible)) ).

Thanks, I'll take this suggestion.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
