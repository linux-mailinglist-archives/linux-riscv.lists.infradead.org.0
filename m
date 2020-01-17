Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8351408DC
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 12:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AaWBhEZxYXFnGVzFNWu2TJ1PByZEnJcSto64i4IPfIQ=; b=ojaEitPo8aMK+Yb2Jjo9wMDF5
	9QzRkCb6DgHKIUgwt0PwTiFIBlKfk1SsdUGga46GUxRUrEAmzpgtLXVq6VLdt0p8uLXf22fc0mdSs
	95drg4Fcv1phbn7fOJaAx7qVtob3hseglG/Lve7zC62ZqQV6+yXMJgM2pieT9au9KhbueYpep25Nu
	O+VzwnXzr5CXqmdOh0MzDP2UxAdtXCbVyByaowJtEzu1IOHl4SgY7JO1y3uMJSCl3Mj5zL0EmhaAY
	cYOE/nhHzJ5PDAWASez0WhGC+i6TR6aOy0qMSR/+ri9N0ifU1rB8sQWjf1kri5s1OTNs4htPpLWPy
	FSau0wLTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isPjW-0005Fc-Mb; Fri, 17 Jan 2020 11:24:10 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPjE-0004sN-8V; Fri, 17 Jan 2020 11:23:56 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MWitM-1j7tG52YKe-00X0YK; Fri, 17 Jan 2020 12:23:45 +0100
Received: by mail-qt1-f172.google.com with SMTP id w30so21429941qtd.12;
 Fri, 17 Jan 2020 03:23:45 -0800 (PST)
X-Gm-Message-State: APjAAAUn6SL8JGlgmt3TdK3M7DIWjW/gvxY2UgzzVjKmcgMVTz06pff2
 TMfsa8/xr4MkKGMonMaI/LPx7HCnluzwr4YC72Y=
X-Google-Smtp-Source: APXvYqyvj+qVxj0YCsmU7P1XOliY6rtqSxryof0W+wMqmW4n2F+6uFJgm4139nMmKoUQOXfgYZ5UmpVyaFMrptCFtJ8=
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr6878361qtr.142.1579260224350; 
 Fri, 17 Jan 2020 03:23:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1579248206.git.michal.simek@xilinx.com>
 <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
In-Reply-To: <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 Jan 2020 12:23:28 +0100
X-Gmail-Original-Message-ID: <CAK8P3a14ASj7Bq7pntaxPRomGKfAALyD6GGR-APYEdh=ja6UkQ@mail.gmail.com>
Message-ID: <CAK8P3a14ASj7Bq7pntaxPRomGKfAALyD6GGR-APYEdh=ja6UkQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] asm-generic: Make dma-contiguous.h a mandatory
 include/asm header
To: Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:JfuYRezXYZd9JXTLFq1H20SUivOnM/fX4K4fg170SWOyB5RZ8KI
 yxjtSv4InSK8r6a5it0lcO2XTAuwUfd8RQgYmjwpb5B36aFBNKISFuwuGpmCjWE6CHWnf8M
 2kO0iL1/huXxrxaHDTZrmVn5Vd5Mhg0eDe2RLTO99KV/kdd/SIg7XIIjvj/f4LAaCcHPViQ
 0/LJodjTSmOa44buMu7ZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PLNeO47EdTk=:UlKpgfMeJ8OijeN6mmjYpe
 L/wmub5ZvZrXialU9VrM+/R0hvTY1+LfNcy+Cnl93zJmp03Sgh1atrf94LSbGUakepiDepUiE
 M0kr9JgOr/L2ektD7oGkfM6P2q5wUoOxodaSGVAeHQwdGHWQYcA57ZLt5k6PdSFK6DpsSzf6r
 Nn1Oz6vwEqQgk+5rizb1MFZ5zKE6/uxGkEJV9tMCvl6Xq1tMsMIlC6a+snfmFWL13WtjwIwri
 IT6MmlwjdR3zMLT46KYNBkqXWyUkugtVjg6VOi0o8w56UU2rEtWaDu5r41Wc1Dh0tbnyTtC7k
 DsTfilndoihEZkc1GBXt9t7B9hjl72C40fKhhwMI0UaudddVZQ+gZMkDFxav55Afkpi/CXAxW
 uZLuWaTGwh8F3oViRvWGfvE5pJKOYQALbKNmJudkGTO6uaod3TtTX6Icpcl0QwiuVYo8ajAs6
 QdBMSvjALZ/U3eJsmdiV47kYaWVCyLz6oWog3W38/vUHT/U3d5Ds8aJlkJ+GHpRf9rfh7eTtZ
 vTCppZNQRsrotyVPHGOBWvvfeU3ghIlOTHzHSOIo+RpC/trm3j8JeKaVIQB6y4KHBMNiIdCVr
 a1lz6AUzNWHWDAnuWodiJLiYdSDTGctlt6GOoX1HySpeuhxH7J2yjN6MHHkxTL/LFMls8HsSC
 Aar1JQed62+T9HJMLkWAIoh/uj89a/SINLkxOar2Yso8vIpXJOZAF/FULkBcM0HWnApFWnJCV
 fPy7JuFpmL9rWowauR8S4mo1MUdvKmevPTqBmBsddtiqQHRoTTMRGx5sFA3YMx9cO8l40vV06
 bkkbnWKfVsuozNmLSIsJXJMi8uWsq2b46PhRh2CId3r1MmKNbIIlT1M8zt6QyS/uhFQAz4UjT
 GND6xsTs8wEHDomxDOYA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_032352_594449_AF26F87D 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Deepa Dinamani <deepa.kernel@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Paul Burton <paulburton@kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 Waiman Long <longman@redhat.com>, linux-xtensa@linux-xtensa.org,
 Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 9:03 AM Michal Simek <michal.simek@xilinx.com> wrote:
>
> dma-continuguous.h is generic for all architectures except arm32 which has
> its own version.
>
> Similar change was done for msi.h by commit a1b39bae16a6
> ("asm-generic: Make msi.h a mandatory include/asm header")
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---

Acked-by: Arnd Bergmann <arnd@arndb.de>

