Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDBCDCDEB
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 20:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BHTGK70Fp6E3AJFnKRDfwaay7eusJ2lrwzNao04Q1A=; b=TzbLpZhipmiMEY
	iljTk4YDf6XWrNCmWt/eGbWjicTz9WUnWNPIA8RMZY+ldTE43ZzsrZjI9nwIcOxQeyeNsyHXEOGU/
	AdJ+w3KGAk+y1Ng4cj7fUhjX1rk39NNo3Aur365N6RDvop82PE7B5ll40JH3uqAU3UlEthILf/R/k
	31JgJ007odWkBdkKPBQKMjBrs3bc3sVMT3Yxa1x1KiQ/S2/bBKY0EbsWeJspbDzDyW8d5xaKiD+Qg
	uqD9hFOwh9V1QNaxypxvpA9rbK+KRejWEHPw+C18VHZt+M8XiayijI1HW2+8rtIWS/Vv8L+nSZPbD
	yOn8cRYhKagbYKTFWLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWwI-0004jv-Mu; Fri, 18 Oct 2019 18:25:26 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWwE-0004jS-Sd
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 18:25:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id c6so8508844ioo.13
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 11:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=DDu/IAHCCoDYbrGWQJqHqgeQldPkoq1jl8KIeufJyiA=;
 b=ISt0Da+OAsAtGt6QgzzKN5nThCoXEDZS6clnnScRtibWElaDsD/W4RTTNQ6acbpK/j
 l95KMPu72vxXKr5UWzk4mDrPZKzMAmOFcRw3lJHfjIPeuHfXoLL5QdHQT2tusEOllbyI
 d6ktFHxCNpFnl9myg4QWttqBICnHFvxFXLeVBMrbb7orBISgGFce/9Fxwto1lnNtCWYD
 M5hBUSGFFn/Ntm1HMvUj0LdPYBi6FYVBUTigi0z3tnpxbBRl9gdb4MtOIf+KUEc9eEci
 VxKJZqtwDRshEl/N2path8RwlSv2JqdGaPkkPjw7PeaXXOsE4Eqg7odxoJKsQyWd6+DO
 RQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=DDu/IAHCCoDYbrGWQJqHqgeQldPkoq1jl8KIeufJyiA=;
 b=aULI0DfxJc3eips738AOJ54XyJv1F38ZeDu67kGRTIt1H5IthN3UCEpDRqw0NWVa51
 +3Uyd/mC/UCrDal0c9DIbRsaq3dYZp1zcdL3eJWgkKW6MnM9KRTFKX4FRzo+5n5tXG3a
 0SfKx6r/MzX8ZsFaFmwdqHcefSWZOAHoAzKXx4kiUqcgv5RsGjBmCkdT8HE24KN2aU+0
 4MKjUdwfiDoCzsRfGOcaSC9gddloW0WWy5z8/WzwN8MTO3cmFD5uxyczJJIJPihm8Cwz
 Et0lx+VDFIQuo9VY+/zImFv3dB2Ea+nXUZMSQdEtiyxAYne5oCIrNoGs2A9UgMgWUwdi
 q7KQ==
X-Gm-Message-State: APjAAAWbtdny5+cErBrK2J3KZ2vZBFxziBsn2XiTbyCY+NVwZfWj9m2Z
 Y5zrqHTWFGkeClkEIsxCsa6DfA==
X-Google-Smtp-Source: APXvYqwFm8QnDjxMk1Ii/z0SeFVjpCdpbt8QkXM1VvTvVcOykUolmscleqfMpc4W6WEofHqEK2BJ8Q==
X-Received: by 2002:a5d:9057:: with SMTP id v23mr3972088ioq.119.1571423121834; 
 Fri, 18 Oct 2019 11:25:21 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id c8sm2044407iol.57.2019.10.18.11.25.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 11:25:21 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:25:19 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
In-Reply-To: <a45f0c0e3db2e852770485bc581d489b6ee7545e.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1910181121270.21875@viisi.sifive.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
 <20191009220058.24964-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1910180142460.21875@viisi.sifive.com>
 <a45f0c0e3db2e852770485bc581d489b6ee7545e.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_112522_935111_B1752C37 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "johan@kernel.org" <johan@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "info@metux.net" <info@metux.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019, Atish Patra wrote:

> On Fri, 2019-10-18 at 01:43 -0700, Paul Walmsley wrote:
> > On Wed, 9 Oct 2019, Atish Patra wrote:
> > 
> > > Currently, isa string is read and checked for correctness at 
> > > multiple places.
> > > 
> > > Consolidate them into one function and use it only during early 
> > > bootup. In case of a incorrect isa string, the cpu shouldn't boot at 
> > > all.
> > > 
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > 
> > Looks like riscv_read_check_isa() is called twice for each hart.  Is 
> > there any way to call it only once per hart?
> > 
> 
> I had to add the check in riscv_fill_hwcap() because that function is
> iterating over all cpu nodes to set the hwcap. Thus, some of the harts
> that are not available due to incorrect isa string can affect hwcap.
> 
> We can check cpu_possible_mask to figure out the harts with invalid isa
> strings but that will perform poorly as RISC-V have more harts in
> future.

How about just calling riscv_read_check_isa() once for all harts and 
leaving riscv_fill_hwcap() the way it was?  You'll probably need to hoist 
the earlier call out of setup_smp(), so it still is called when 
!CONFIG_SMP.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
