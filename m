Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01987A805F
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 12:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhl3SvA/sIbqXngAET4FDFrAy6lxd7KyQzCiu/SmOlo=; b=CW6VcskMnE/4Ek
	Gqj3C9GLL/eVPXG4LjK9yQx8i7tkJdDP1wOpXraOSwLAlcrnURLWJBA8nwrGjj8iwaHcP1ASZE7+y
	SVd4cy4B4isbQDVW+P9r+o2H+a3yRzi26o1shnYniaUko2WRag3fabLb68SQ7v4NorOOEu4I0JWTX
	6sc4T59pkopccegIQfNpEG3rPILcePqu/EOM9ckDLOICgAbZc6QZhIE9X4rIKfCaPQHgxR2pWXldQ
	kbY6dCuVYzcTTLWTbGq4PfOC3tAYQXJnB3pVhrzUt+ORzc8c5fev3X18jv6i6eAvLlgSfgQIZUj3L
	UkFytFTbRDPZMyFFk7kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SYB-0006cY-DG; Wed, 04 Sep 2019 10:30:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SY7-0005ut-Jq
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 10:30:04 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D37D023401
 for <linux-riscv@lists.infradead.org>; Wed,  4 Sep 2019 10:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567593002;
 bh=amI1d8yBvn/2nQ7SmkYLPb5JPFI1OXVPx3baApwdu8w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iDl09F1WFvIIManqW67rfAKaZOFCuYqsa0tm+xGEVjV4EMByAWwf9uxyR+syKTSrF
 6Vk9YqLLzk4QoZAEBkb+9RpHbqoj1CA4nMUSoltZ0/ADvxlJUd/hthPQc6wN/TaaA2
 pts92/TlsTA1i/h/u7v8nBoxWXgvmvZSoE7Uetac=
Received: by mail-qt1-f182.google.com with SMTP id b2so20243946qtq.5
 for <linux-riscv@lists.infradead.org>; Wed, 04 Sep 2019 03:30:01 -0700 (PDT)
X-Gm-Message-State: APjAAAXMXJQ1NJ4rVxxaupwMxVUV0r7AoNz+AUO2HFPA2v1LkvOx6Zif
 Ulzpf5AI9uQDRICU0m07T0y7Cqf7dU3IHG8uZw==
X-Google-Smtp-Source: APXvYqzTP+mgbJl6qP03BXMD1qIfb+4LM4ULeWNvke171DdGIssPz0kzGCRX9eANVeuAuu1eEKJVX3ie/ck0yCk5VC0=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr38455056qto.224.1567593000985; 
 Wed, 04 Sep 2019 03:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <1567592383-8920-1-git-send-email-pragnesh.patel@sifive.com>
In-Reply-To: <1567592383-8920-1-git-send-email-pragnesh.patel@sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 4 Sep 2019 11:29:49 +0100
X-Gmail-Original-Message-ID: <CAL_JsqK8UpZ1Nn4CbcKgW7xgezy20JtdJ6=niyJK_aV3as6Jxg@mail.gmail.com>
Message-ID: <CAL_JsqK8UpZ1Nn4CbcKgW7xgezy20JtdJ6=niyJK_aV3as6Jxg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: serial: Convert riscv,
 sifive-serial to json-schema
To: Pragnesh Patel <pragnesh.patel@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_033003_684282_F968FDAB 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 11:20 AM Pragnesh Patel
<pragnesh.patel@sifive.com> wrote:
>
> Convert the riscv,sifive-serial binding to DT schema using json-schema.
>
> Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> ---
>
> Changes in v2:
> - Replace enum with items in compatible property
>
>  .../devicetree/bindings/serial/sifive-serial.txt   | 33 ------------
>  .../devicetree/bindings/serial/sifive-serial.yaml  | 62 ++++++++++++++++++++++
>  2 files changed, 62 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
