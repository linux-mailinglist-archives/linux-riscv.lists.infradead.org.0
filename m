Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869FFFA5F7
	for <lists+linux-riscv@lfdr.de>; Wed, 13 Nov 2019 03:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7LdV2mBP8mQ+qmJC5A/i+JNhkQtNBEV/iqi697vVp8=; b=GfHYV0JITxz3pS
	4hFaPNzeG9gzI6QcuSHDCD4NlCWUgLN4mSmt8wYlVXmyNOptswPvt49NirMX7Wt6tHwq1jsda23XW
	ipiktwleYzw+2HH+RbIsH59vu9bWsj+T5q4Dc/K94IDYyAKMBhfNoWf1JqmPU6QFdUR4oSooem57Z
	r9+sSFR2lDeI0RjfKmTVtb1IlJ7pK7yHjF5Xly0Fo7asOZaN+nGlkhxs7evwogSg7Oa/pl9rFGh6f
	FeXlRE1YsNcU+CdG287EWHKKDrSP9faR5FV/pAIcz9PtGSAR6vw53rLxS2m4F9ysyf4ATfCvyyqLL
	zdahJyS+DiaNST8Eawog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiLs-00072F-HE; Wed, 13 Nov 2019 02:25:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiLn-0006zv-Er
 for linux-riscv@lists.infradead.org; Wed, 13 Nov 2019 02:25:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id b19so533895pfd.3
 for <linux-riscv@lists.infradead.org>; Tue, 12 Nov 2019 18:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nujO1oAvQuda3HPNop9afPS+ilUfrJs0rYOKUqnCb18=;
 b=BPU+KO8V4PYZ+J0n2pqqh99W6ac4KcA7jk9+Zx5Bh9OaO6sBVt5ASZ3fj2xsr7WB7h
 SNaYNXc6sIWn6YEyADZbJe7z3JF26ysja52rZqHxSCop1eb2A4pFagSs05W3SzOME71F
 +e50abCI5ARQEy5f8R51YRtyP0PuwpGB72ACdE6tA0mEZfJovs8eMOHA1jiWlzka5K15
 JLUMn+pilZuA3qO/j2ZIJDHqtcvueUv2mdQwVvg7dKtohxfHj+VMahIPeM31ICvNc43E
 iqCMdi8V2KCrPhkZpw3wVaVj1lX/NA93rZJYM+rZ23pl0rachlvFFlb2IN6Z3ISJazGJ
 D/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nujO1oAvQuda3HPNop9afPS+ilUfrJs0rYOKUqnCb18=;
 b=lIMMZqgZww1p7l2xJfGYdCmuhRQXSjPjfWUxeD3/E/uycJW3DMBFkelrr6E3BXc+kW
 7lm1T8QazxzYruHo6uqK2GIxE6JtaCGJa78GBV8kC27qfQQ0Sru/NSsT9nWO6unr0TEV
 sheVWxtCHk+IYCJfaZ5M+/NbwYbgt+O7oYZgPPKon/pnVkJnt71WAD40KW2sef/sCEgl
 8/mAlVdZsp81HOtIje0jO1Ck1vyIO6cMfJrupeBtHX8Q7IXyWaZ0uyYYNE/PBAcrBWd/
 aILSFp5YuszekG/RZ4IsP56ZdMeQE1svGcQM5Xpu8xC0c5OWIQKT1tIReVZHmRZiO0e9
 lLbQ==
X-Gm-Message-State: APjAAAULvH1JZE6EwD0AK603q1f9Gk+zHTC3dpaaID/QE7eGEH2XzaKH
 jibqTnUTl4PmALm/y/oXaic5RA==
X-Google-Smtp-Source: APXvYqxs45XVCS3zCAgepAPxJo7NC1+kdqXWgGiouecxkPxJpR21JojV3y5afr/yBsyQaJO5O2g3Xw==
X-Received: by 2002:a63:b20f:: with SMTP id x15mr830789pge.65.1573611942121;
 Tue, 12 Nov 2019 18:25:42 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id y24sm319473pfr.116.2019.11.12.18.25.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2019 18:25:41 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com> <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com> <20191113012337.GA70781@google.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
Date: Wed, 13 Nov 2019 02:25:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191113012337.GA70781@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_182543_597586_806D110A 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Ben Segall <bsegall@google.com>,
 Guo Ren <guoren@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Matt Turner <mattst88@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Len Brown <len.brown@intel.com>,
 linux-pm@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-um@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Richard Henderson <rth@twiddle.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Mackerras <paulus@samba.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-ia64@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-hexagon@vger.kernel.org, Helge Deller <deller@gmx.de>,
 linux-xtensa@linux-xtensa.org, Vasily Gorbik <gor@linux.ibm.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k@lists.linux-m68k.org, Stafford Horne <shorne@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Douglas Anderson <dianders@chromium.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Will Deacon <will@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Brian Cain <bcain@codeaurora.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 kgdb-bugreport@lists.sourceforge.net, linux-snps-arc@lists.infradead.org,
 Fenghua Yu <fenghua.yu@intel.com>, Borislav Petkov <bp@alien8.de>,
 Jeff Dike <jdike@addtoit.com>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Greentime Hu <green.hu@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-parisc@vger.kernel.org, linux-alpha@vger.kernel.org,
 Ley Foon Tan <lftan@altera.com>, "David S. Miller" <davem@davemloft.net>,
 Rich Felker <dalias@libc.org>, Peter Zijlstra <peterz@infradead.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Richard Weinberger <richard@nod.at>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Mark Salter <msalter@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Michal Simek <monstr@monstr.eu>, Vineet Gupta <vgupta@synopsys.com>,
 linux-mips@vger.kernel.org, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Jason Wessel <jason.wessel@windriver.com>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 11/13/19 1:23 AM, Sergey Senozhatsky wrote:
> On (19/11/12 19:12), Sergey Senozhatsky wrote:
>> On (19/11/12 09:35), Petr Mladek wrote:
>> [..]
>>> This is getting too complicated. It would introduce too many
>>> hidden rules. While the explicitly passed loglevel parameter
>>> is straightforward and clear.
>>
>> If loglevel is DEFAULT or NOTICE or INFO then we can overwrite it
>> (either downgrade or upgrade). That's one rule, basically. Not too
>> complicated, I guess.
> 
> Can be taken even a bit further than
> 
> 	show_stack(NULL, NULL, LOGLEVEL_DEBUG);
> or
> 	show_stack(NULL, NULL, LOGLEVEL_ERR);
> 
> For instance,
> 
> 	spin_lock_irqsave(&rq->lock, flags);
> 	printk_emergency_enter(LOGLEVEL_SCHED);
> 		...
> 		show_stack(...);
> 		printk();
> 		printk();
> 		...
> 	spin_unlock_irqrestore(&rq->lock, flags);
> 
> or
> 
> 	spin_lock_irqsave(&uart_port->lock, flags);
> 	printk_emergency_enter(LOGLEVEL_SCHED);
> 		...
> 		printk();
> 		printk();
> 		...

Yeah, that makes sense.

I believe it's up to you, Petr and Steven to decide what's better for
printk(). I mean, after all you care for all this code.

I guess I've pointed that in my point of view price for one-time testing
code is cheaper than adding a new printk feature to swap log levels on
the fly. But again, it's just how I see it - if we fix those printing
problems, than in half year we will forget they ever existed, but in
your proposal, there will still be some clever printk code.

On the other side, also worth to note that current patches set fix
problems for kdb (and for my hung task printing patch), but it's
incomplete for sysrq driver. I've gone through functions used by sysrq
driver and the same changes introducing log level parameter would be
needed for: sched_show_task(), debug_show_all_locks(), show_regs(),
show_state(), show_mem(). Some of them don't need any platform changes,
but at least show_regs() needs.
So, you also need to have that in mind making the decision.

Thanks,
          Dmitry

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
