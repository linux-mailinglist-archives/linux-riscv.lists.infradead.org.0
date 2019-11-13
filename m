Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C53FAA3A
	for <lists+linux-riscv@lfdr.de>; Wed, 13 Nov 2019 07:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOcax8DDmt3cZknUKWDhTV5RPCIJlY4ayYmUDOwzlQI=; b=QgP1TiwAiw2IAQ
	t7y5UFGlYDnEbSaBbNdLn31g0vACDbdRy2YEpJl+wrkQ9XjwN+GR+om24Pet7l9XT1iw38dZ2La9z
	xqDPWiZNcZxX6G9Q2UD4WRa8slQy+8vq2awVqASBqdOclLWczM9IoHfTD3Q49OA2CLQFsPr7SbgQ5
	cDmH+489kbSHghgsvQAciGRfa+xnC6XC2r9nGY/nq1bQBRQ2jq0hp5NZxQdKB4Jqu1DLgAE5lPckg
	eOptBetrKEv4V5bPKIkXeLPbraCb9Q0lScf+8FQy5cLxFkv7+WmAhy0OrXfgur8+Iht0RXAJFwTPy
	eG8ZH8dEIDE8waE0b5ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmDm-0000Mb-EJ; Wed, 13 Nov 2019 06:33:42 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmDj-0000M2-Ii; Wed, 13 Nov 2019 06:33:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id d29so630359plj.8;
 Tue, 12 Nov 2019 22:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KPZG4VqXDKJQhwt8QhBKSdwu6zZ1yvGSLXAAovETV8E=;
 b=U+7/ZvVfxKk+hxsLJDRIKIa9v9E62t1+RHHdRG8fTOKlKCc4Kg8kLlVghoiEvtLKpI
 pPB/09WWUgNDAvmTd9ZCgUOuDBo7+0/f9WrOXWR2uZQ/aTiznYX6i7YMJNAQqiVBiT9D
 uNMlkpfHxoC092SA3lqUUmN6Py1jaNvbxPVR7bhPPMcnC5VVTdQfrrvn9g+mwUT9wmS5
 IpQo+ozODVnxdup9AaHr+12x4K6wNPJd6H6aHacy3JkNKTrjQ9VPgzg12dvkP1Aua/p8
 JdT9N+L+Gr2JhZIIZgVnzKCc48NZMHSHGJjqaFnpF0Bg0opyuGJWVOEoMHo8Jbl+CwGg
 Qilw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KPZG4VqXDKJQhwt8QhBKSdwu6zZ1yvGSLXAAovETV8E=;
 b=Cbl9vV8Kmc2UKRAtJCXWY/IFWuMkkJTzQchYyk+WymuixXuFZIGC49qyAWtikjeVPS
 ZhqVsv3fLTZPJuAR9hnZoAnAHfs836T0gXVZwMQYj3QvnIVF8ig9+mh6IkLcdIGhLSs5
 /JHsWVEzdmrFilP2FY45qqIkNYk+sc/3KkG8JaGpMTtFpVxqumB+fAThxL9Rtxv24YTl
 XfrxnFo+gXP86PxWnOeo4E51d7YE0HhMG/Y9jknj1SaxUE+2KI44pWw4GvlH+DOZG6FD
 iZzzbRmGdED51uU4XCrqymJVuxx3YwwmOGneB8FABcpzvTyzTB90w5vGfvtM4/llQ/H3
 FMVg==
X-Gm-Message-State: APjAAAWu/H4N7qwyfMag3XBY8nDG79KsTByCSS053voU+I8KwT7Ezo/T
 D6I81HQZHQrxYMliHMBONks=
X-Google-Smtp-Source: APXvYqw/EXwYt3YxwlYA4wZk8PjZNxrmOm0/6WUJy4pyQbt0uw3oeq/94f1ysfc7w8q8vIp4HTP4BA==
X-Received: by 2002:a17:902:5a44:: with SMTP id
 f4mr2028828plm.174.1573626818736; 
 Tue, 12 Nov 2019 22:33:38 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id i16sm1209291pfa.184.2019.11.12.22.33.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 22:33:37 -0800 (PST)
Date: Wed, 13 Nov 2019 15:33:34 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191113063334.GA147997@google.com>
References: <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com>
 <20191113012337.GA70781@google.com>
 <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_223339_643010_C3BD994E 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Ben Segall <bsegall@google.com>, Guo Ren <guoren@kernel.org>,
 Pavel Machek <pavel@ucw.cz>, Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Matt Turner <mattst88@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Petr Mladek <pmladek@suse.com>,
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
 Jeff Dike <jdike@addtoit.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 "David S. Miller" <davem@davemloft.net>, Rich Felker <dalias@libc.org>,
 Len Brown <len.brown@intel.com>, Peter Zijlstra <peterz@infradead.org>,
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

On (19/11/13 02:25), Dmitry Safonov wrote:
> I guess I've pointed that in my point of view price for one-time testing
> code is cheaper than adding a new printk feature to swap log levels on
> the fly.
[..]
> I've gone through functions used by sysrq driver and the same changes
> introducing log level parameter would be needed for: sched_show_task(),
> debug_show_all_locks(), show_regs(), show_state(), show_mem(). Some of
> them don't need any platform changes, but at least show_regs() needs.

Good points and nice conclusion.

Well, here we go. There is a number of generally useful functions that
print nice data and where people might want to have better loglevel control
(for debugging purposes). show_stack() is just one of them. Patching all
those functions, which you have mentioned above, is hardly a fun task to do.
Hence the printk() per-CPU per-context loglevel proposition. The code there
is not clever or complicated and is meant for debugging purposes only, but
with just 3 lines of code one can do some stuff:

	/* @BTW you can't do this with "%s" KERN_FOO ;P */
+	printk_emergency_enter(LOGLEVEL_SCHED);
+	debug_show_all_locks();
+	printk_emergency_exit();

Now...
I'm not sure if this whole thing is up to "printk maintainers only".
If no one is going to use "emergency printk contexts" then there is
no point in having that code in the kernel.

	-ss

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
