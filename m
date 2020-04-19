Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70C91B6324
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 20:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:From:
	Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Jc5ETSxqq6NYY+alx24tGIp1ggMXAYlh7YmjtD5qYU=; b=OJwelksYZGDKD5
	JhpLDj/M6O+NawRAGdnAtIgd2zxB5FZZp0xODarsJaXjxrvJjcG7y7nNvYse5nj+Q6aR0CPdqwjcq
	Bul9T8eedTaZFfVorn4hnDASYmJv2+CVQOjCVKc5dd+sA/9X/VECe4Q8vwo9LQ5IfjAoJVyWAgZ4Q
	4r19nhmLBd07OlrQbzhMGK43LO5GjL3SpO0lTJ/qWhIEX8frtnT9D4XG3ibjBXa5egidWZpnGI5Vu
	gHmBfQDtfS5ACcUgRAXj9O5j+EQWDplaXdbzRXbj9BQwADIGknmWhpsT0tIoeZ8FaGoNiLqsl1j8t
	Aspz/KPTGCd+KI4TzP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgRT-0004yu-Rv; Thu, 23 Apr 2020 18:19:19 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ3R9-0005kP-P4; Sun, 19 Apr 2020 06:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1587277511;
 bh=R0GHJO7eG/0xS8Mj3Xwo95YcotDuEUImghkPfpCjkFc=;
 h=X-UI-Sender-Class:To:Subject:From:Cc:Date;
 b=Xh1rc4a2nTe2FRbuM2d3LFUpy2ATvwL6Mq2jASXH2Uj1VECi3BtaU5jTeDU96zUi+
 gwYzUq+VcXKoRGDrodiVHQrXb1tznMtvGdEFxr0epor8v8528Eupg9FhX4N5yizX0i
 J6tVmFc1f+jyCb7V0IZQSHGzySHfodHG+S60VHtQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.243.85.208]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M9XM3-1jWsci0q1X-00Czel; Sun, 19
 Apr 2020 08:25:11 +0200
To: Dmitry Safonov <dima@arista.com>, clang-built-linux@googlegroups.com,
 kgdb-bugreport@lists.sourceforge.net, linux-alpha@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 linux-hexagon@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-um@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, nios2-dev@lists.rocketboards.org,
 openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v3 00/50] Add log level to show_stack()
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <510426be-c95f-adea-af6a-51e592f41ce0@web.de>
Date: Sun, 19 Apr 2020 08:24:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:fiBSRO5JZPPBGS/b+P/QruwXKgWy4xjJvI1a3z6iU6xtTvYTpCB
 pGORkj/vSYtLOKKzKGbFfcSK/Mou5mOeNdeChPpnGK9+R6cV6V2QZpwk6eAyoINjSlTLuMo
 Z/VyxDlhjzKREAtaxgxyanMkXCAvYMpuZTmfgusDDU3VdEOSrKPLcx0qIUljlW1Ka1EknhK
 Eqtnj0zaaSVw0Vha1eRBw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ehBQdQ698Lk=:IdmHlujqBKzzQmVyxHxpoK
 DFsD7gY9mP6ek2gQ6rxL1bwYQ1rb5wpstw3lT+rY1bU9hW5itp5hwllJEn+y1i5seCO4fcwLC
 mZMroLfFVhVoOrgTwKR2VXilmctNTk7gJJQpMzH244yiH8Fz47UF/OibZfphqm0nIvrcwwpMl
 gRz54IhzjzfUL+d7d/zfTucpak3ynHWOKZ0BiWupzUqdU7/korEZsWNpjEcHvCQNT8cfk5lLR
 yQU0yAt431TPKozFgClZBlZUZv32ojrXjMkn4KLCnHcuhNEgT0QgjmTtTgHqEg3eExyILQsvc
 70eUl/OzAKzn6eeQOZ8o4UBMt+T8aB+sT387dq2b7khis+MP0w1QWLS6AKGCjIIljOtBSMVps
 A3wbsAnJyLPAwOs/5pmMYVaosln4zLgVju3A1Hj184A0HVCRWS0Ev/Jiukh8CazfelYhw4DVC
 LwpEsCuJ+BzliLsh5HQXbcLaSzSV1PsHks03z/kz93xBd5emcXaDXdyMOcPWC+J+ztYJ057Cw
 FmuJUbfnbCyBHAmcOdXQ2L0r1VGVQaHzsYmhwLjVRqJVhZU2Ir4q62yurjtctQkq5CF43SHAS
 r6HtFH3JuYVJnWkjNGRgFjEFerKMtvoLkJKr01VQEYpJEzZyUI0RlI3bMBNZFWnodsTzAcUh/
 G9j4BmCAP1sQMVpn+WjR/Kx/lFAHk9mNgjgBMuY1XOyOCwgSIwb7xRY4gNbMeU68nH47zH4gj
 dXwbZvnaZ0fRI/0H0w/SDpG9S+QIrg6EHeBdHvuQc8Id0cqP16ebg+/avJDTFH3QZdFalU7w6
 3lDZc7cqKqaMFwg2+zdEjIz2Nz5WbX5RaeJfFeRgx06rlgyCR95Tr8eHjOJucwr/OAYDRx1lN
 02JAqSH42LB0gjpvYRltpAx5o17WFhohio2K+8WYlrL2O7wOai1CsBWdxq6sNfrzBJH/epsOi
 HWg2PMyaUccn3OjxKLf7Uf91fCAQbnFMa0+DhJVLA2U7AbbwhoMpVJ0cDx6sEhcPk4PTjPlT4
 OWr3v5qv7OmtFlIcgGGyvMpc/ODK5bwQBcBsKDKt3HnH80LR+OUURQxbY26ROGtKsdylfz0zu
 CnZ1aBsnFtd/p9jeOSUUh61PAUtgD/bKd2E9jIq75VtWI316Pz04pvz9Wfg/eKimP8IMb4aCS
 tu+XVeQVahy9GAnATDTXNXqzET7vzkpRPlPAwcGWtvpMuKBV5pNuWHCGLcKJ6Vv4DB3VDSeD0
 d4zoddkIxnUJnaDoQ
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_232816_151487_9E32E3E2 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Mailman-Approved-At: Thu, 23 Apr 2020 11:19:17 -0700
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Rich Felker <dalias@libc.org>,
 Thomas Gleixner <tglx@linutronix.de>, Petr Mladek <pmladek@suse.com>,
 Len Brown <len.brown@intel.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 "James E. J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Ben Segall <bsegall@google.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Pavel Machek <pavel@ucw.cz>, "H. Peter Anvin" <hpa@zytor.com>,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Paul Mackerras <paulus@samba.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jonas Bonn <jonas@southpole.se>, Daniel Thompson <daniel.thompson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 =?UTF-8?Q?Christian_Borntr=c3=a4ger?= <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, Mel Gorman <mgorman@suse.de>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Matt Turner <mattst88@gmail.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Jeff Dike <jdike@addtoit.com>,
 Jiri Slaby <jslaby@suse.com>, Steven Rostedt <rostedt@goodmis.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Richard Weinberger <richard@nod.at>, Borislav Petkov <bp@alien8.de>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Ley Foon Tan <lftan@altera.com>, Stafford Horne <shorne@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Guan Xuetao <gxt@pku.edu.cn>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Paul Burton <paulburton@kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Douglas Anderson <dianders@chromium.org>,
 =?UTF-8?Q?Ralf_B=c3=a4chle?= <ralf@linux-mips.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Mark Salter <msalter@redhat.com>,
 Jason Wessel <jason.wessel@windriver.com>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> Changes to v3:
> - Collected more architectual Acks and Reviewed-by

* I suggest to avoid a typo in this description.

* Please separate the tag =E2=80=9CPATCH=E2=80=9D from the version descrip=
tor in the subject.
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/=
Documentation/process/submitting-patches.rst?id=3D50cc09c18985eacbbd666acf=
d7be2391394733f5#n709

Regards,
Markus

