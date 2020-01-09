Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3878C1351C1
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Jan 2020 04:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bnTY8CnU5oshbR8rdx81dOOrMPgQQX1DVF27rged5H8=; b=iQO9JT0NQush/6HJh/9aGea9M
	Gy+kVL9PNqfKR+OFS9Zfrc6WOBisyfPwO/dppkbRPNkAUWY8uYsz42TXkSGlh9BODGwvpD3afZ6og
	q9OZ8hd3K9UIOaxSmqxMKRZbKdRZ21kyLsZUjp1+E9pFKUyTCcO2g3MuzT/C911KKlTKhN0c/APVH
	5woSVOa0rNZUecv7q93vlzbgoy9mebGjL+pR388JbF1dZqiPowl0gwa+JsXjsmviDmnP2mTv3rEWI
	qw9HXIlBxWBLNXBm0z1JvUH9AEMi3Mwn+OJsQAxaeAI7Zwow7UBOI8fPaq5nOTdS0NNbmmvAZuSxV
	ZRlpqTKAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOE3-0008I7-Fe; Thu, 09 Jan 2020 03:11:11 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipODz-0008F7-Ti
 for linux-riscv@lists.infradead.org; Thu, 09 Jan 2020 03:11:09 +0000
Received: by mail-qk1-x744.google.com with SMTP id j9so4770877qkk.1
 for <linux-riscv@lists.infradead.org>; Wed, 08 Jan 2020 19:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bnTY8CnU5oshbR8rdx81dOOrMPgQQX1DVF27rged5H8=;
 b=LyHBZmOKZ0euELTEe/dueyKGBnppDCBT3eoR7FrtlyB8OgX+MYcJx6MCmbOJqOm5Fu
 HlFlr/KaRxMMgws5aaxYI1uCELna+fnKeuNueYhPgfXgCrPLdaU1vpi9Tk02VY1HN/d7
 YiHor2YIS5m/oZaupSQbf4rwgvIdQ0oU0UlbSGlvz9TXKFEiET+YI+dbtN1qy4FdQHF/
 gA3ngkIc6wujirBb/NJlcV2OjfW8wKmxgNSD2Ed6ufuqmpCLgR5NnjrLDu8AoxSzbQkI
 IxD1nTGg2cBX9SG6TpFwc7SJJrA382Iqjm53s19MXrR2LOmCaYs+KoOZkFY25HJYbn6+
 y3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bnTY8CnU5oshbR8rdx81dOOrMPgQQX1DVF27rged5H8=;
 b=QYTbtlUeIlyoEcB/+ckPue0d/4UbceCcFsrjl8BBkIPXt+QD9CM2Lb3AAv0Z7erXKZ
 BxZufI+qcnpDdYDnZu5ryo6KaZaijy+JgH8KjjhTy8u8augwP9nJfmHKwIzhTFsb1ILJ
 1ARvEnQH1emiQaztZ5Z89lU9wcuQklzXJdqvF0vof7PZi6F77+W59rstizAdr+otPVwT
 JyEJynKSE0nAY/1CTcQjRvu7WtSVfD4BA2y2UBI5Iza9D/RYb14yy7w3TAspLoAzZMBP
 ldB8j7PKgS4+L8soQjUN8royc7pyEvSLNYDUBH7h//f4mkcqif3Q4qIStIbi3d3HHVc1
 d9wg==
X-Gm-Message-State: APjAAAWli0qAeMJht1HyiaDsmLdjIYWdZOianNKGe/LeuKpnL4Yllhv5
 UyEoLQJb66xBD/36CFYpeWghRPaut8VIdzUh/q7TOA==
X-Google-Smtp-Source: APXvYqxH9+3t7y/aLEdJpTNDT5TwazELLQ86HW6a34SlwoRD/9/0Sdf0UohLKFoTv8iQ87Il6nQA3wvpYz5jUAy5Ra8=
X-Received: by 2002:ae9:eb56:: with SMTP id b83mr7295612qkg.123.1578539466382; 
 Wed, 08 Jan 2020 19:11:06 -0800 (PST)
MIME-Version: 1.0
References: <20200108024035.17524-1-greentime.hu@sifive.com>
 <mvmk162z6g5.fsf@suse.de>
In-Reply-To: <mvmk162z6g5.fsf@suse.de>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Thu, 9 Jan 2020 11:10:54 +0800
Message-ID: <CAHCEeh+SVzXrK3wRBgBZfDAHZON+Zi8CiKgNbwqeJKZKosOZDQ@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: to make sure the cores in .Lsecondary_park
To: Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_191108_116090_4E559C1C 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gt <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, greentime@kernel.org,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 4:41 PM Andreas Schwab <schwab@suse.de> wrote:
>
> The subject is missing a verb.
>
> riscv: make sure the cores stay looping in .Lsecondary_park
>

Thank you, Andreas.
I will send v3 to fix this. :)

