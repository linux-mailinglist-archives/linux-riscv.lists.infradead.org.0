Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8059B141264
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 21:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l67Q2JaZUuxYTTc14dadVG8CPVycSfA7W0h/5578mZM=; b=d7mxz1l1SMNDXv2ZCJ6r7Qvgt
	po2wA9iVn+rnlljySz1SDrPTzgQWw1Jg1Hpj2e6rKJovUvlGuFgXJQSNAfl6pKWP2OI1A35upLe9c
	NzO7rAb4PZ9202aHhnu1xkgyGwAFNOOTPlZ49pBpNNG8Naq08xLQmbpK5L2sa1AQ0eK+fMrdkHmCA
	W7AU3xlvC8F8zrtwNCrWn5ztq61K7nBLg/oxnv1K9FnLogh4FOK0M/2lFwQt/of5X2QUBH+nVge22
	N9gSCV4TbYlSgwMvmHHkjSJdbVuk1y/ILUhybXfosfuSXz/8eZjtbdcsjvNb7E+DH19BBGjF+YWHW
	IRdsCkL/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isYR6-0008Sa-QH; Fri, 17 Jan 2020 20:41:44 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isYR0-0008PX-FP
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 20:41:42 +0000
Received: by mail-il1-x144.google.com with SMTP id p8so22318041iln.12
 for <linux-riscv@lists.infradead.org>; Fri, 17 Jan 2020 12:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=l67Q2JaZUuxYTTc14dadVG8CPVycSfA7W0h/5578mZM=;
 b=nn60vdPY5om2CTLHZCbVBXuD2dZtq3zIDLFjv2f6o6pOmcpQs/R92aqkvIGklG1VpR
 XpNW7h8CCl1ZSya8QZWLffcfrqvDWXl5mpvfQHLU6HDBeUc1PDAD56OIt0QJlcN/XWZ+
 2sTUPoSecKfaTR2L4Ci21mLETPNqvNgPUoYE0OSz2plDFr+UCSZjkOPhI+GiEOQaaJ8H
 oP6PnPn12MdknimQ5M8Fe85zN/+BQVIoG07WB//UeFh1qz+ilqI3tk07zQRi2qS27RNW
 YwaR7d0Hzjdm+XiTGhn0sXAazXuwx8zTapGag25WVCVYr78/TJf9U8BhImtBvcbES8t6
 qk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=l67Q2JaZUuxYTTc14dadVG8CPVycSfA7W0h/5578mZM=;
 b=FP4fcMTQ5ySSTQ/Bey5APvakfEgzJbmyMrFkaQjgLalWv2QQAChEwyLewBc0UqzmcF
 pvcj3cMveXkox/fYhPiQIqrcbk+OTJFU4Z/3/wto/8lBAEHIwkXMcnnqqhWu5ahsSvlO
 cYzOLXROdpQG63rjhudx+Eaj5PR/8UNLCFwxv3AoehO6Yp/VU9ndfButpSUiuYjLCjzW
 fJ1B0W3eD2nM08nklf56oyvzc0cpYW+fLE/0lRxOrVHohLQE6uj8K7wZgmfFTtDDo28/
 vZX8X5zffQKkh9WQ7AGfnrHO+TkL8xbKEBSY3yrR18eY+UO4Ugfy0m37Q53lsTMgDtyX
 glTQ==
X-Gm-Message-State: APjAAAUyJiajO3p1c8phyLI9gcdfoVUSfTWWK3YYHpisTBsr4u+FOAya
 MHquENK87UYN57YvJNlkWio/Ag==
X-Google-Smtp-Source: APXvYqyhD/DuCNRVkINRezmPM4CoIncLA7Blgo9UbiMKgcAlY+o2QZJtykuXI74GzHHVKdxUjToU5w==
X-Received: by 2002:a92:ba93:: with SMTP id t19mr369490ill.0.1579293694120;
 Fri, 17 Jan 2020 12:41:34 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id x77sm8237951ilk.34.2020.01.17.12.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 12:41:33 -0800 (PST)
Date: Fri, 17 Jan 2020 12:41:31 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2 1/2] asm-generic: Make dma-contiguous.h a mandatory
 include/asm header
In-Reply-To: <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
Message-ID: <alpine.DEB.2.21.9999.2001171241070.98477@viisi.sifive.com>
References: <cover.1579248206.git.michal.simek@xilinx.com>
 <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_124138_522774_1DE5E9B3 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Deepa Dinamani <deepa.kernel@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, x86@kernel.org,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 Waiman Long <longman@redhat.com>, linux-xtensa@linux-xtensa.org,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Borislav Petkov <bp@alien8.de>, git@xilinx.com,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, monstr@monstr.eu,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020, Michal Simek wrote:

> dma-continuguous.h is generic for all architectures except arm32 which has
> its own version.
> 
> Similar change was done for msi.h by commit a1b39bae16a6
> ("asm-generic: Make msi.h a mandatory include/asm header")
> 
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv


- Paul

