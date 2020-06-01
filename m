Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAFD1E9E71
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 08:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8aJu7HZYIMghXbwmtV9dMcjHWX1+lbhn347o7bmEYc=; b=WRgoR35Kp4JAh/IyZ7SBloCh7
	4cckiJmyS0Clz0ioUGYZwNbi9vOUzulH9RMh+lD124FSeRQT0xZxnQZGaIpcI45RP8zUFljiHeDxf
	JlSzgTaa6FCa0KquWd0CrEhG2g6IeixW1EymRjTbzqLk2oRkvszOKBXkJUXulFvbz39HSWea1beZb
	lAPHDmyQ4JtZ2O3npu8a0M+lZ3wrp495FzwH0fL3HMpp9GWxMSayRBn+98Z0rbcY0bB4VeyJ3I+/W
	R4W5t+tqlJ7ujFpf9xpW3eK4uLPwkYowTH1JFrKfLHAGI2XS95v0gfrNEz+1NcmVhsYRYtEIgi84S
	VTG4xshnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeEz-0001Ue-Ri; Mon, 01 Jun 2020 06:48:09 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeEv-0001T8-T9
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 06:48:07 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49b5N00p3Wz1rwDp;
 Mon,  1 Jun 2020 08:48:00 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49b5Mz70PHz1qt9d;
 Mon,  1 Jun 2020 08:47:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id K7aoiT7bHhZT; Mon,  1 Jun 2020 08:47:59 +0200 (CEST)
X-Auth-Info: UkBhxRzjMZwILyMRHsICA31NCCzeepETlHTbDM0u6PImCC/UDjHCSfqUd4AYGUzB
Received: from hase.home (ppp-46-244-183-46.dynamic.mnet-online.de
 [46.244.183.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  1 Jun 2020 08:47:59 +0200 (CEST)
Received: by hase.home (Postfix, from userid 1000)
 id 009D21014F6; Mon,  1 Jun 2020 08:47:57 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH] riscv: fix build warning of missing prototypes
References: <7acb6dcf9975bbf3aff4be3b01320fd1b5ba30c1.1590983619.git.zong.li@sifive.com>
X-Yow: Those aren't WINOS--that's my JUGGLER, my AERIALIST,
 my SWORD SWALLOWER, and my LATEX NOVELTY SUPPLIER!!
Date: Mon, 01 Jun 2020 08:47:57 +0200
In-Reply-To: <7acb6dcf9975bbf3aff4be3b01320fd1b5ba30c1.1590983619.git.zong.li@sifive.com>
 (Zong Li's message of "Mon, 1 Jun 2020 11:55:32 +0800")
Message-ID: <87ftbfqo2q.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_234806_090115_452FDAE7 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: kbuild test robot <lkp@intel.com>, linux-riscv@lists.infradead.org,
 palmer@dabbelt.com, linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 01 2020, Zong Li wrote:

> Add the missing header in file, it was losed in original implementation.

s/losed/lost/

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

