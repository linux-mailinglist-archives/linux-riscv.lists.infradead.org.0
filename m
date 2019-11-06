Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA83F1AE3
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 17:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5It4IzmHXUXCiQJSse4bORHiUroMfZv1bQptPxkp244=; b=s22LmjgSK8KKTa
	ZHnpHpM8NRkxtsOXUPZ7NV9E6WOT436uj+geXL2FDkxnmXITmfRrHKvIrKbZI6il7gy1rnf+4ZuvS
	YL9iNsMGk/zvwaCqVCpYUXf6IOE3wz/2miFpm5O+hCDIp55DQ5ua4Iugk2hbWp8gdOgmP63ejzTlF
	xpPdPGv5a6DphyZVSHERKRCD0gDzT0yFto3KHsOkOmFLE3si5xNNJbF58q4cjuwWFNEXBYRZxB1yd
	CCh+s52549MTeQzj9MAwg71hVWHm4Vr5uhhgHpjf9yJxXhYciWHLqZ/xDcgy2lh5hXvrGWhwAtY0c
	WTg5CyfHC1p23hPCzmeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNv0-0005rC-BD; Wed, 06 Nov 2019 16:12:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNut-0005os-KN
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 16:12:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id e4so17470603pgs.1
 for <linux-riscv@lists.infradead.org>; Wed, 06 Nov 2019 08:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6YKC1kJOcWpyD+8pjGdr6zJNIwDWfqyBu/N6KBSP97U=;
 b=MpZHturjPCBg33iU1ozhAjvA8LCtPPFI3DR58OYlFEaUZGZqfEzhUtttDDrlEOGegQ
 4vDex9qExlxkA9WH33d8HwoxTLWivc69W/6aer4DXfteqgbtXwv3cNxCcRds4ZAMweGX
 5ZXj+X+FYkL8t+hZqh4LwhZRZNRrqod+Up3sqXtFrQSRV7C3Y69W33Z8X4jj1Fl7gbuY
 R6u824u7CLy//WZ/duinZirY1ifbAiK575WJqRiWdVx2qkiQPu6t7SWS7JDhyX5hOHLe
 oe8RLdwEfd46kke7TKQhcEtTSIZl2oUQhbinVc7bj3yYIQzIfU4ltgAEvZlXwG6aLosM
 UhRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6YKC1kJOcWpyD+8pjGdr6zJNIwDWfqyBu/N6KBSP97U=;
 b=PS2ssP1Q3rNu6GocneMyHxu+8dGPilaoavA1CDgBcdCH0AOd8qzvX5QiMUHG00o6tA
 0s8otwd+DFabmyA/UBUM/oXVuLMuLXrVpBkd16vmATACCrz4i039rB+flAoDZVqQxZDK
 UphFNxG8yJMBKPaAItQcOa7fhoE2id6e3/LJbFPwV0O+rKyIoZPzIke6dJclk0MVb/Lt
 f71+Dc2ey56jzODYZIAxvgfELBtdM6LekJId0xyH879VHfHeeEY3kO9lw1cHOOQMs3DA
 aaE+2IlUS/8nOkRD5+Oj8QVFO9WjieYuGSY8+IABGhOwgxThpr2+RJdHgGPSEDUTIBKO
 bbvw==
X-Gm-Message-State: APjAAAUkJtkJRbl4ozcbKqtTfNbR3pnnA7ONvP79KSOntfW088BP1m9K
 shS809k5hoajJaMblRXPiBLFOg==
X-Google-Smtp-Source: APXvYqwR0pSNn59pPusYKfkpnLRmR/vqqpv4L3qv+M0Onv9D6hRgWRQkxTVXtCrUTdykmM2sB1/Rnw==
X-Received: by 2002:aa7:908b:: with SMTP id i11mr4396653pfa.140.1573056738752; 
 Wed, 06 Nov 2019 08:12:18 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j4sm5535967pjf.25.2019.11.06.08.12.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:12:17 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Petr Mladek <pmladek@suse.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <de8a397d-8660-4ace-9626-127debcf43a7@arista.com>
Date: Wed, 6 Nov 2019 16:12:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_081219_701466_E559A4ED 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jeff Dike <jdike@addtoit.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 "David S. Miller" <davem@davemloft.net>, Rich Felker <dalias@libc.org>,
 Peter Zijlstra <peterz@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
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

On 11/6/19 8:35 AM, Petr Mladek wrote:
> On Wed 2019-11-06 03:04:51, Dmitry Safonov wrote:
>> Add log level argument to show_stack().
>> Done in three stages:
>> 1. Introducing show_stack_loglvl() for every architecture
>> 2. Migrating old users with an explicit log level
>> 3. Renaming show_stack_loglvl() into show_stack()
>>
>> Justification:
>> o It's a design mistake to move a business-logic decision
>>   into platform realization detail.
>> o I have currently two patches sets that would benefit from this work:
>>   Removing console_loglevel jumps in sysrq driver [1]
> 
> Just to clarify. The problem in sysrq driver is a bit different.
> It modifies console_loglevel to show even less important message
> on the console.
> 
> IMHO, it should be solved by printing the header line with pr_error().
> It is not ideal. A cleaner solution might be to introduce another
> loglevel that will always get pushed to the console. But I am
> not sure if it is worth this single line.

I believe why it's not done - there is a comment in sysrq code that said
the userspace relies on the loglevel of sysrq messages (and may trigger
alerts from emerg/err log level):
  * Raise the apparent loglevel to maximum so that the sysrq header
  * is shown to provide the user with positive feedback.  We do not
  * simply emit this at KERN_EMERG as that would change message
  * routing in the consumers of /proc/kmsg.

But I don't mind any solution.

>>   Hung task warning before panic [2] - suggested by Tetsuo (but he
>>   probably didn't realise what it would involve).
>> o While doing (1), (2) the backtraces were adjusted to headers
>>   and other messages for each situation - so there won't be a situation
>>   when the backtrace is printed, but the headers are missing because
>>   they have lesser log level (or the reverse).
>> o As the result in (2) plays with console_loglevel for kdb are removed.
> 
>> The least important for upstream, but maybe still worth to note that
>> every company I've worked in so far had an off-list patch to print
>> backtrace with the needed log level (but only for the architecture they
>> cared about).
>> If you have other ideas how you will benefit from show_stack() with
>> a log level - please, reply to this cover letter.
> 
> I agree with all the other justification.
> 
> I would add. The backtrace is really useful for debugging. It should
> be possible to print it even in less critical situations.
> 
> I am afraid that many people use WARN() for this purpose. But WARN()
> is not always appropriate. WARN() misuse huts when panic_on_warn
> option is used.

Thanks, Petr.

-- 
          Dmitry

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
