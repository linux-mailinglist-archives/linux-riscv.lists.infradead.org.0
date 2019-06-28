Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE86C59316
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 06:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkDoLY5NdgvSYabpicfHRJBOHajSNZU+9UvGG2PRA4w=; b=Gl93sqgVjPiV4n
	lnk+SO3IYXYdec7yhxTvAQ4B6WgMNDE70aLTZUeVpBHn/ZhcSj1BT9PBTUJw8eZorhHhS7LVZsa+i
	lRa1G+pzsP/WEAXRjxvQRC9uGZDB17sKrf+wrpx7MCpWmCm7vSdx1aIJSjuYjBF47QVtUZfepFScw
	GDU3gwnnkQTgRnaWqMFwNTu9AFj9ts1bBQ931aN8E7FpbiKlLSoA9InUvyeUp7EWsAZDkL7Wp0a+U
	iQ/LnqGGbVXqgJqIQRnemuATfmrJk6JAXr75g8p8AEA/F/uEBFydpju2mbn1sxHflWl78IaZ8SmyH
	FM9ASgQQcM+FC0xCzDOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiw1-0000Fb-FE; Fri, 28 Jun 2019 04:56:29 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgivx-0000FC-OD
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 04:56:27 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so3029043lfh.13
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 21:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Volcz+38jFTPOHhlSCwFUXULczOSSWdKlXjynAvXZDg=;
 b=PlfixOl+QPoGMyaFe2Hbgr7TdZEGndH1m9uWyDNz30knzSu4v0OqSV1jZjRpegQuon
 JyW7CENbD7XnwFyJzLjt84XB2fT/64UHTpHcz/E/9dtFSysS0SqOPgXDb8HS47OX1f89
 K8pPh311m/Yv1NK8pQ5/b/UADCH/nk1O0ChludFMf1bWhV+8jfnnNXjnknGTJSleKP8q
 Obcx3GVTQTRUpERYC/FPi+iZrZEOP2o38tbH0QU5v2dbZQeW8lGL3QzeinimF1gOc14F
 Px8jxHBHiXyRcuuWyi/itTtAWe6QbrGaajI4wjEzxDS5mChRAIFYbd3ENwM0OxiD0mpW
 HM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Volcz+38jFTPOHhlSCwFUXULczOSSWdKlXjynAvXZDg=;
 b=qUYoDpFHTXqWUfmRcfCK2kysVA+ewbpEJOeC1HTaIIYg4sJvAjwBvMw1j3gh1xDcN7
 Y+gNqhPSmOtPZR7nt4Rs4LkQVPi/5X0JzM8fpOaBytLhU3/xKWf4KhEuIcskWpPvG+AR
 /a42SKF9O3bzcDMPpBTT44mHG1hpVMBPVDrIWnyWCZwQrYyqgQiQiRjoo/HWHvM3I//e
 01Mf8p8ggDGWpnwWCPbv6gb2Y6Nsdj4jFnlUpHuRM1fQcrV4D5TFN4VCJsJhwXhTNV3m
 T0DzOzLscmVUfrpjVO8Y5F7KaMTZiK1ElE5T8o35NE5ZPmwqrrBG/z/lL8bX/Se3BWqr
 /xKA==
X-Gm-Message-State: APjAAAXX3rpIhcuUIBR/bJ7p/Z78KPwCreofoNtMjofp3mvZVxKDvytu
 Fz3G8hvSf5q692nWRXCHCQb2hKkLQzXxtx822qkRoA==
X-Google-Smtp-Source: APXvYqzlzqZOsDs2VTwjk724loQUgJL+eZ4KD/HJzBLf212IMOapwwrzRfTAmHgtC+qcnuRrWo1dAJmH4ez/SKwGT1g=
X-Received: by 2002:a19:6602:: with SMTP id a2mr3799436lfc.25.1561697784041;
 Thu, 27 Jun 2019 21:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <1561624486-22867-1-git-send-email-yash.shah@sifive.com>
 <alpine.DEB.2.21.9999.1906270911270.12689@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906270911270.12689@viisi.sifive.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Fri, 28 Jun 2019 10:25:47 +0530
Message-ID: <CAJ2_jOGVJotV73YP9JTr4hDDWgH-Jr6Cfn2Pscx49wR78JocNg@mail.gmail.com>
Subject: Re: [PATCH] riscv: ccache: Remove unused variable
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_215625_849272_315E7698 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sachin Ghadi <sachin.ghadi@sifive.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 9:43 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 27 Jun 2019, Yash Shah wrote:
>
> > Reading the count register clears the interrupt signal. Currently, the
> > count registers are read into 'regval' variable but the variable is
> > never used. Therefore remove it.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>
> This is a good start.  Could you also add comments in the code that
> describe what those reads are doing, as you did in the patch description?
> Otherwise they look pretty mysterious.
>

Sure, will add comments and send v2

>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
