Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419E81A81DC
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Apr 2020 17:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJ2gNbqVeV+hSWe91DtMlcIeX11rcaXW3r4FdWfxGYg=; b=HaCe45MI2h8ZCOxjBp8JeyobC
	/9rNn6y53BOGqc+N91kQym/pYqhcZNhmhs/47TtOFaZ4DGsfTuXmKkSvI+yg0fTe+W/xArf70W0ZX
	0Qeygqk09cBsthuOmQuOOY8oivYImlFp7VR/Sxv6KKlg9+sFkj7kKCQ1NxWJIvXx63cybH+X6+WDu
	JFxRuT+g9fNn9RvB2J8MDpgjjLlqiBTzSrwMqccws/kL/DbeNqfZpvqB8sj3bCmzbFHIQ0z6VVJoE
	yZR590dalC1Us3MSPapB2DnAnPth6GM6TooJSSLw50sAdwGD9AWU4bNpmNKJz2KSwFcXnWEe+RlMK
	2oK2EYh/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONJz-0001zf-GJ; Tue, 14 Apr 2020 15:17:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONJw-0001zL-Fj
 for linux-riscv@lists.infradead.org; Tue, 14 Apr 2020 15:17:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id d24so39981pll.8
 for <linux-riscv@lists.infradead.org>; Tue, 14 Apr 2020 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dJ2gNbqVeV+hSWe91DtMlcIeX11rcaXW3r4FdWfxGYg=;
 b=q60rX2pT/kSNyqXq1zY0YNp3nDuRWTEvtlfwSYVdmAmcPMbWysamMjc0m5EFxe2/oF
 XQz+nS0rTtaEkabC2KU0gsxFvv7gT+eK3B0kdl45ueoLWikYNAluQC3+u0YuHV/qxjZu
 cemXxKaCyiY0RZW6X/IW45+ZqzLU2l9pMivLPMyE3tNv/WP+1VmMv6IhVEhQOjA5S05A
 NXICwUWeXGz7Xj/eFSvbnZmMlk4UOuwaMepjlo+eg11VPIBbNhjdHT4Ue0krYm1gcxPt
 rfXWpPKwz4SdB9/xejf7nyigopz8ZnBItAfDQUjvJAtzkjXgdp9sHrGHMzlwsyffCB/4
 +meQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dJ2gNbqVeV+hSWe91DtMlcIeX11rcaXW3r4FdWfxGYg=;
 b=E7/9QBXFneXWOmuarrNDH+X65+VgSjwEUXhZ9YTGatYoV5P/1jxgDCblGIj7/E3A8L
 F35RU3cS+/s+D4fsl76bGAJGuJ8fRX/2S9j8VjbfsZHlx2ofHUurQP9a7spVtbguGuGh
 2YLrya2+sKXRTmhRL8oGUGqHMV8iSHYnESdhNovGwuRAON2plg8p0duxhW4KyTk7zxJN
 g2dJc+TAe+4rukyaeyRG/TbMtXr0Om0Kv6YVURTR+XkX8l93SyvI/VKM/6BlheIfY8vF
 DIVruTg+vkoNITl3d0VMDsurC0aw4IU4Ze/1P8vy4tvi0lGXkZ2SsLRDxjXxuflr7rLH
 mCgw==
X-Gm-Message-State: AGi0PubWb+N+Q4aeFQSGr6JdAwQtsY0wGv7cOgy8ZR4V4Ec0aiLiMxiV
 EGweFQhU9c0YQFTPtywIXIc=
X-Google-Smtp-Source: APiQypLxLCyrfW0NagMyb2018P8jP6K/vZqSVtb2ts5tCcdoQlpub1U0h+VU6zqXUT4UODDJuW3ncw==
X-Received: by 2002:a17:902:6503:: with SMTP id b3mr457263plk.20.1586877471101; 
 Tue, 14 Apr 2020 08:17:51 -0700 (PDT)
Received: from localhost ([183.82.185.98])
 by smtp.gmail.com with ESMTPSA id 198sm11641428pfa.87.2020.04.14.08.17.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Apr 2020 08:17:50 -0700 (PDT)
Date: Tue, 14 Apr 2020 20:47:48 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
Message-ID: <20200414151748.GA5624@afzalpc>
References: <20200331093241.3728-1-tesheng@andestech.com>
 <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
 <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081752_523232_72051654 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Borislav Petkov <bp@suse.de>, Eric Lin <tesheng@andestech.com>,
 alex@ghiti.fr, Alan Kao <alankao@andestech.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Logan Gunthorpe <logang@deltatee.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Steven Price <steven.price@arm.com>,
 atish.patra@wdc.com, yash.shah@sifive.com, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greentime Hu <green.hu@gmail.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 zong.li@sifive.com, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+ rmk

Hi Arnd,

On Wed, Apr 08, 2020 at 04:40:17PM +0200, Arnd Bergmann wrote:

> No code yet, so far not much more than the ideas that I listed. We
> are currently looking for someone interested in doing the work
> or maybe sponsoring it if they have a strong interest.

If no one have yet taken it up, i am interested in doing the work, i
will sponsor myself :). i will proceed at a slow pace without derailing
my other things normal.

To keep expectations realistic: i have not yet taken task of this
complexity, it is more of a learning for me. My familiarity with Linux
at the ARM architecture level is mostly on no-MMU (Cortex-M), have not
worked so far seriously on MMU Linux at the ARM architectural level,
though used to go through ARM ARM v7-AR at times.

i have a few 32-bit ARM Cortex-A (A5, A8 & A9) boards, maximum RAM 1G,
none have LPAE, seems i have to buy one for this purpose.

And if someone else wants to do it, i will not take it up.

Regards
afzal

