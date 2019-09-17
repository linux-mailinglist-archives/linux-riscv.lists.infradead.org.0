Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8811B4876
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 09:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESBG0hCVV+B+lpLWe8sYkdlbuDFs1jLAJ8ivkxJcH+A=; b=f1g2mqX62ogmBQ
	8FY9sOl76YJgEgWV9u8eBJZ5sHuT2fsVIL38jPYtVxSUSlllVI10W1izqlakcJPqPd+6TRftyTS8T
	ryrEQPkp108bPGDLh7S7G3PFC5msEn5rW+jrti4Nm/3IlExx92LJmxQIQEmkG7uXPyZCPq0gxQZAh
	JL7qfJBNLfJfq5ec0OhRIg+AaqazAZQ7SCrxrzwSsbufp9vN4JAC0Q6K/d2Cg1BXnj5tIQcGQjunc
	PqvEmE575+NsoBzvdCDxdwyWbgKqO19/VbKn+DEwgtgPzExt5WuiDWp1+mQYngy+ECR0ToIuZt1/+
	n5rv4IkfIXbU0pEZ3VWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA899-0002vF-Lk; Tue, 17 Sep 2019 07:43:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA894-0002uS-J4
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 07:43:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 12BB9AD3A;
 Tue, 17 Sep 2019 07:43:26 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
References: <mhng-5091669f-461c-4e62-a71c-e16957801fad@palmer-si-x1c4>
X-Yow: Wait..  is this a FUN THING or the END of LIFE in Petticoat Junction??
Date: Tue, 17 Sep 2019 09:43:25 +0200
In-Reply-To: <mhng-5091669f-461c-4e62-a71c-e16957801fad@palmer-si-x1c4>
 (Palmer Dabbelt's message of "Mon, 16 Sep 2019 14:38:39 -0700 (PDT)")
Message-ID: <mvma7b3e5b6.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_004330_775820_27860A47 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Greg KH <gregkh@linuxfoundation.org>, jslaby@suse.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sep 16 2019, Palmer Dabbelt <palmer@sifive.com> wrote:

> but we don't set it for the HiFive Unleashed.  I'd call that a bug,
> something like this
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 93d68cbd64fe..6d0ec76d93fe 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -13,6 +13,7 @@
>        compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000";
>
>        chosen {
> +               stdout-path = &uart0;
>        };
>
>        cpus {
>
> should fix it.  LMK if I've misunderstood something.

If that's how it's supposed to work, ok.  Other platforms add it in
u-boot.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
