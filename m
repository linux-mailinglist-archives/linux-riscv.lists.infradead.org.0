Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C5CB2600
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 21:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8WP1EwaHDKiQM+BdpIdzXa2Zhihgxw1H40yTBcJAljE=; b=LkSaKGUC/caAwH
	rTAspOALvkRj/KZrFsXotcX90wDZuaPNTb4xi3+Xk8BsulwPyBsJG5deRpJZQb9cUumXLD5HfvX9d
	8zrCwPuyCppmnn+cvSGNwu8MKVSn0cHLQlm3GDi8MXeopFyo+ZP6sJsXY03TDBaEw9b7YHDLFwuFC
	ZXZ0+iqkV7g9TXu+IF9Z9McSgGGFaw+y9EwCCjvz7YSu/GIdE1DJuq0jXnxLJIEBrHcC0xPRkTOhW
	DnYFaSkHIzA4CiBVdJ8FPrfG8QA7tnsLJSXdnUey5IkcmGEXHHsuqYgKZCwt+BXtIG/D3TXJiFy9O
	GPLWoP7Ub1KWmyz7t2Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8rEI-0003Qq-R4; Fri, 13 Sep 2019 19:27:38 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8rEF-0003QM-6o
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 19:27:36 +0000
Received: by mail-pf1-f195.google.com with SMTP id y5so15931765pfo.4
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 12:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:from:to;
 bh=GeNQTpb4muGawgtTnFW9WgNICQSqi8hVoxKQKMkLI14=;
 b=Ld7ED5zkUjyza/rjrOGXRx1S624zdIpX7nvyXAYsHac7/GMX7oCNKvFTXWDaQdDduu
 8cI7Ii4lnfjBm+x+vMH7nY+kRFJyKLoceephBUN4YG5mu71juRgGgA3WJqP0JgCxbkua
 E6V0Pm4gkz+tAg+WsR4miu8ImRvMURE+p/b17HCH+w6hgO0LqpASQr9C/iFw6ACaz9uf
 1rptAo9V/sx7yFHb6a4ggW4J20mw75MI4ZdSlLXSwzMECMVHXfp9m/0WmnFU8VqWTsaM
 RZSwrSEiAiXHMlq34EbJ5HwwXY0Ju/J7Ztiu3WD3sw7kaag/To21nS7jS0hesgqGbV4y
 S0dA==
X-Gm-Message-State: APjAAAUtq5+CPKj7VR9PGSiLeiLvnSrATqIWIJrK59sh9iRNFT2sFPkA
 9xXXIPAlKH7ABgvukieDApbsonQ3qqd5aw==
X-Google-Smtp-Source: APXvYqzostOhWeIkz4TIEJK5V/KYG6ym0jO69mh6r1aCjNXJrh5pFVP5VFh4IOQ2pJHgw0Wvlena2w==
X-Received: by 2002:a17:90a:17ad:: with SMTP id
 q42mr6742026pja.26.1568402854140; 
 Fri, 13 Sep 2019 12:27:34 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id r2sm48732441pfq.60.2019.09.13.12.27.32
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 12:27:33 -0700 (PDT)
Subject: [PATCH 0/4] Documentation: riscv: Image cleanups
Date: Fri, 13 Sep 2019 12:24:29 -0700
Message-Id: <20190913192433.4316-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_122735_249201_C3E1E5E0 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There were a handful of issues with our image format documentation that
I noticed when reading it.  Nominally they're all independent, but since
it's text they'll all conflict so I've sent them in order.



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
