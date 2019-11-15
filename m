Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4A0FD219
	for <lists+linux-riscv@lfdr.de>; Fri, 15 Nov 2019 01:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2SL1j3W3iqZWbj+Qb0hsTYKNHmEJzKb74HvpVQ/t5Q=; b=ilFbD1nV2nTP63
	dRsulkFpyzC0cQp3QE524fQ3hPlUfZA+nNbdQidrUFJDZcfufO6wdD7IgkpTkygMsUYobFg1vAfWR
	t1Aw1e+FRfCjGSa9Muwu9J8KYoL6f+N4LG4quE+4IKWCpira9c3A4PfkDz8RCZCqB1UBtfb8/tcuK
	IMtEfu5jp/8PQERfva1eca37bYZEkHhhWYUtyTTzxAjMVQKvkmf1tkRz0M5z1L8Yvlj2wluuDpkwG
	R/YclklO4unPeKfQkH3w6oZYzpjRoXbx6n2vskQ28q7T94V0El8vuGGkL9ryQ+7ngDMtiNXwULl2H
	cemxyzxyX+WkfgjInZbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVPok-0002eJ-07; Fri, 15 Nov 2019 00:50:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVPog-0002da-AF; Fri, 15 Nov 2019 00:50:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id l24so4855757pgh.10;
 Thu, 14 Nov 2019 16:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vPNtAsB3gXKxK0gWaPZBn5Rp3HfCqb9+MUmX4aWZ2D4=;
 b=KmyV0wmxO8hyWXeEcxKcQ9g8HAkhA/qdNPNsFVQfn2yQQaw88HTfL9LaYbMztbfLd7
 52Pu0wZdSH5VQCaovxyvQHk0OD3K8hwyJyv7gTIE7WfYFbfnBk0EdgJX1JDN4pxqrXgl
 ySMbute8meJ9NzhuhL1SAlrw8K7mPUp5drSPhW4XMcf1d4qZgHVwU+2rw50XjdktNSiF
 sXgm7kRa4irKvcghjdz42mh6HHtDdUpm74owHzVgf/ujVAH0IqCxtLXrybdOBUMLjKyu
 aagzgO7oGkNhda1hCKKFnixzMGqDsMvYc3bCAGLjTVnTtVkSC3NSs1N74SaX4ygndQ54
 O+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vPNtAsB3gXKxK0gWaPZBn5Rp3HfCqb9+MUmX4aWZ2D4=;
 b=gBaLf8zlNWJ58MKkGOiTDDXWaWAQAD9KgqD8vzpQ6rPHqcufRNBQMBC9QE/hCp+HV1
 3PhsgDtSEwVLymY+eue2mbG8P5ou37kHFK26m/Mr09ZQBl8DTnzskUMFzqLYK4R/Sj5Q
 TtqgHrU+szkXsQKcsYv6qky15XOBPf3tovn57/nJAOlLCWp0DragDXFtl8ym+PbIiJ9s
 EnXnlbq/2FsRECfJE5MlftdjiiiHBhKs2nnKK9TICOaCLa6EiLdJbuMnrwI2TiVCYlWS
 GCRJRZ7oV5hel970WM/IN8iIxgyERVFX6ibVPQ2veBxr5WopTzNiWw9C5y1MKfKs/KTZ
 J09Q==
X-Gm-Message-State: APjAAAUfd7Mcp5H8NcSn/eN4CX0K0K7ABrirh0o++4SEWNnm+hPSkRaR
 jIvChAfTfUYa7hgmRTbXVwk=
X-Google-Smtp-Source: APXvYqzs/6YJY3W3liGEvm6Y1c+pswB4gmlD11KAgZFkRk3IFiZFsVE0EZASQU/B8tJzNuq9YuYJSQ==
X-Received: by 2002:a62:ee0c:: with SMTP id e12mr14672743pfi.38.1573779025403; 
 Thu, 14 Nov 2019 16:50:25 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id s15sm3632564pjp.3.2019.11.14.16.50.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 16:50:24 -0800 (PST)
Date: Fri, 15 Nov 2019 09:50:22 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 00/50] Add log level to show_stack()
Message-ID: <20191115005022.GA144607@google.com>
References: <20191111012336.GA85185@google.com>
 <20191111091207.u3lrd6cmumnx4czr@pathway.suse.cz>
 <20191112044447.GA121272@google.com>
 <20191112045704.GA138013@google.com>
 <20191112083509.gmgjpkjffsfaw5lm@pathway.suse.cz>
 <20191112101229.GA201294@google.com>
 <20191113012337.GA70781@google.com>
 <25ff45f0-6420-f660-55a8-637f11ab5ab4@arista.com>
 <20191113063334.GA147997@google.com>
 <578d041a-3ce5-28bb-9fcc-cf90fe82b036@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <578d041a-3ce5-28bb-9fcc-cf90fe82b036@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_165026_358759_CA2DCC3A 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On (19/11/13 16:40), Dmitry Safonov wrote:
> It's also not very fun for me to create those patches.
> But they fix console_loglevel issues (I hope we could un-export it in
> the end) and also I need it for my other patches those will produce
> warnings with debug loglevel when configured through sysctl.

No objections.

	-ss

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
