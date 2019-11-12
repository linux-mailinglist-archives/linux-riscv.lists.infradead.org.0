Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF725F86F8
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 03:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S13d3wdATnq3uMiA9w/xZ8BF4JVr4ukXg9ZPB7BZcfE=; b=IH4CXYDe4hfbP7
	cmzVQkSLVii/sC4UEAoJ1rpxeKJlMdGocO33Pom+nCjK4n4URjgsTXkGz0HWKrWxLD7pTzA/cAZNS
	wpj/gN6A82h/ReXj/LNcj6+pYRPDi2xjIfwXVKRXMEJAeDxp6zj03ZURN7xUIZIHgCj6btdhERxnU
	a9exNFOcDYi79V3vxjbg1vmLj7grFFv7XAWhKqjK8GIr+Cvj6OPbDN6+kPJ4PGp25G+enq0RJN9/l
	ypo8TtgBQVI4H8mWbCzPVprieVd7AccjGrgxu4kF+VEOU4thCuMVfzVNqTVbRIre/NSrYWgnjpA2q
	CTMhGH+k6KGRr6+vod3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUM6V-0004nm-7L; Tue, 12 Nov 2019 02:40:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUM6P-0004m4-OC
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 02:40:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so1422256wme.1
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 18:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hc0bl6ua3Awo0puTEJJtiCFLlsTJGov09J6GyMYDUcw=;
 b=MX42aMTTzAgzmolo19ziCaVvJW01j4llkcsSSsPBgIZf5M/QJqFnu0ykgQ+YU9I1XM
 lWWUfFOOmvWQUbOV/+iKy4yX6WRH0x7F+7sbAobnLPJdwSzb9YWyJ9/pnJvSWZVMB+xV
 UFEneok+5nQrKqWY1H/ryexuorVth0ci9XQccgC0yNGEatwsWoLWkeJcz3zYnXhenkJH
 nhLbJhqGH8CSvC3ekwmNTkFJs9KRa26JVi5KOJ0GN3lmDlPGH14xef5YqFU0Sk8qUi0p
 NtXZ7DYgZXwHf2rN/1LtOFtVEw8aJlkAZJ8tf3acCKNzLndcz00BKo1YrVsWG4zo53JF
 Pi/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hc0bl6ua3Awo0puTEJJtiCFLlsTJGov09J6GyMYDUcw=;
 b=c9rUERNzsbAeOyWR5slxfBDFA3LIrSuPICvUy+PgmiVcjy3GFjEq78YVKJi5JgqI/e
 L5LWlvzPXab/jZlf9z4MUwbwPYqJYPrNeEa7YtRjL2iRvBL5dtFE72rL7akWuejT6IM+
 oouGbR7TIa8Sf7IuIFNjOQcGU43frQLTL53ORysqsHMUBIP8nQ+zdiFPyKD1Smrni3ZA
 eMM70+zHKFiMacATiPLuvZdMHu0g4WgQH4lrO1Ujvrq/T5U8uwnEihIGGozq2ZjKMJ9S
 KBpiRzfJEViAq/JqrYS3IdHqvDXceUpRf/DbfXL3jtH5/3sqcXd2HN08OP5lRxMkWAvv
 Ygdg==
X-Gm-Message-State: APjAAAU3XKNogLYTJpyykNwebdZvYmaEnKQb7dVyy7hbvHk1//x2roRg
 G9OxaBukrUPpry5jmemBuY6pHA==
X-Google-Smtp-Source: APXvYqwGQmDILzErOejMnS6vcYmyu3aXwuweLJ3fDyVGcyV1rhcTRlJUkjSBJvf4yqYURAoU8N6Q/w==
X-Received: by 2002:a7b:c211:: with SMTP id x17mr1567811wmi.71.1573526420054; 
 Mon, 11 Nov 2019 18:40:20 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id u26sm1511046wmj.9.2019.11.11.18.40.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Nov 2019 18:40:19 -0800 (PST)
Subject: Re: [PATCH 00/50] Add log level to show_stack()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
 <20191108103719.GB175344@google.com>
 <20191108130447.h3wfgo4efjkto56f@pathway.suse.cz>
 <20191111012336.GA85185@google.com>
 <13e72b62-c842-8ed5-5b41-bc1692b28f53@arista.com>
 <20191112021747.GA68506@google.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <25cb9647-007a-9c18-4784-49c0aef4f54b@arista.com>
Date: Tue, 12 Nov 2019 02:40:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191112021747.GA68506@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_184021_794784_49650513 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Petr Mladek <pmladek@suse.com>, Peter Zijlstra <peterz@infradead.org>,
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

Hi Sergey,

On 11/12/19 2:17 AM, Sergey Senozhatsky wrote:
> On (19/11/11 19:47), Dmitry Safonov wrote:
[..]
>> What I'm going to do - is to fix all build and reported issues, I'll
>> send v2 this week and feel free to NAK it, I will forget about those
>> patches and won't be offended.
> 
> Lovely.
> And - no, I'm not going to NAK platform specific changes. Just so you know.
> 
> *All* I'm talking about is an alternative, less "go and touch a ton of
> platform code" approach. The argument "I patched so many files that I'm
> not even going to discuss anything now" is not productive, to say the
> least. Hope this clarifies.

It probably was a wrong impression from the both sides.
My impression was "You touch every architecture - we won't even consider
that". Sorry for the the wrong impression from my side - I'm open for
discussion.

In my point of view the cost of one-time [mostly build] testing every
architecture is cheaper than introducing some new smart code that will
live forever. Though, again you and Petr understand more than me in
printk() code, so I'm not any insisting.

I'll reply to your suggestion tomorrow, it's a bit late in my tz.

Thanks,
          Dmitry

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
