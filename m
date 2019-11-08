Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3231DF44B7
	for <lists+linux-riscv@lfdr.de>; Fri,  8 Nov 2019 11:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TbfvbBMMqYJhaiiDLT5hNlGfQ9AYI+qFDv44qtxUn8=; b=ev1AOwJFzwsuKz
	KReAxG09UHfg38wG4XRZOHXjGaMk/Fey12D2/WiOJEBAMFBnkMFH8M6nFVSRigk2V50gJTBa5ox8P
	hK7A/SRq/Yh5MjFhzsOZ1kneLnxnZXD/eCPO3b/9OA0Ug0pF7B8B7m8+E+6bh4x7hbcOBiy+5cZFU
	S4f+1ptRlURf91kNyJbmhqyiyDYc5+8pUPzLb1zjJx65sakMqCxmywH/eNa/MxUZI/vpoYKmLiPC5
	7pzjWHdw8m8wBtrXrhyjPNntHGhRwXZwJQooYVKMQ3Pzv4JwLofpguhkmRU4bl8o1Ct0elLuHQshs
	OckqDG8vQ/DBS+IykC+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1dv-0004RJ-Ju; Fri, 08 Nov 2019 10:37:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1dr-0004QV-B1; Fri, 08 Nov 2019 10:37:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id d13so4304331pfq.2;
 Fri, 08 Nov 2019 02:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S+Nia2Oa5QzCO5JT/esBQ1livkv4TlWV+4fZRWkEO+o=;
 b=f9fUi1K0epILaPpMKUGA+FGIJ+GYnQXz31FR/JIRsr0jNtvXVD8WKS6AKbo2g/yYiS
 jp2Jgic4IxPn6T+PZphyltIyB4vnkBFwniOcMw51O2csFX1kjAC4QKejH96MUOsdWVPi
 BoIKRt+J7TT0AysruvIMXwSoJkxw5mAFsb1iShx9yrdJQ4jAMH1x3fQmLCILPy17O63N
 P5MCDaBbfZ4mb7y00oRdGf9IW4tz0D1nAGsSM5DLvdeQEZfjNAjb8k+88kSyJh4+WTH8
 CfsXzxfWKj+ARiV2OGLJRKeQ2vRNt5PSY65UAb+0sRHT/5MlGv9E/r9lKer8LjaXODrM
 kWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S+Nia2Oa5QzCO5JT/esBQ1livkv4TlWV+4fZRWkEO+o=;
 b=Gey08aSE7P0QEqtqM73/1+4z4d8KPb4SHU/xHBN2csJrKWl2Nm5F7Ksacw0eqURD4G
 oWoBVHrGC2CQBQgMMFmYS6cr1aHVSP6DqUsGemfBvbzVIeoWMvTTs9ccJXwc1rrY71M8
 mEa/vHhVqLFLHth5H+jyLglqQSp2woFu6nh4ZAPokUBk7Ry3Lomz3OrAhTwt9ToNtMQL
 DCq+NbO6peFwiHOkB7nrWfxAz7irijUlcSbccbXjkfm763gPGnoO4Y1vlgID4vJznEv+
 fsmLOn48acZMO/XdhgrLpHs8jD1FlMJSX/oSibU7xpUGYkfylc6YcKceiMAwAXg+Q5zN
 NGYQ==
X-Gm-Message-State: APjAAAWZ/yTfjQJNUWg9iF1znFmiWScpomlrGXCQ+eRjmkFhLXZYYgVc
 GjLcUYAKzyv7VA5Jg0QlAC0=
X-Google-Smtp-Source: APXvYqyO7sUpnj6a7Ff+Mjm5FDdK7wKit2fH7+9aIK/ZJYnbn96UndAqrCFpv1s9jhGv09wzRODVog==
X-Received: by 2002:a17:90a:25ea:: with SMTP id
 k97mr12085072pje.110.1573209442245; 
 Fri, 08 Nov 2019 02:37:22 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id m14sm5221119pgj.8.2019.11.08.02.37.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 02:37:21 -0800 (PST)
Date: Fri, 8 Nov 2019 19:37:19 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191108103719.GB175344@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106083538.z5nlpuf64cigxigh@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_023723_717938_0748F105 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Ben Segall <bsegall@google.com>,
 Guo Ren <guoren@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Dmitry Safonov <dima@arista.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
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

On (19/11/06 09:35), Petr Mladek wrote:
> I agree with all the other justification.
> 
> I would add. The backtrace is really useful for debugging. It should
> be possible to print it even in less critical situations.

Hmm, I don't know.
Do we really need debug/info level backtraces? May be all backtraces
can be converted to something more severe (so we can stop playing games
with loglvl) and then we can clean up "(ab)users"?

	-ss

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
