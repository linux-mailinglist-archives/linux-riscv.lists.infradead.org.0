Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECF930A09
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 10:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dywfCw/RIt7iNh4KpdjxHb9eOtEnBzqoyH61BaLtyqc=; b=aJFu0rzBO1V5x6
	9ccMd+PfJMgnhv5FO4Dph/0bEMdDuckh0tXnshzklkWzkJKh4X0atBOT5kVa3yEysIm2fgjHpkxMP
	XOn9uYa5I6CmWImG9heSxCuVpUNYyl9+rImLNK3un7t8SZl6Sdjcc9up+lu+XWAPuZHvd41TaKtPq
	LO4d2lSCPEC7wuVNE8BB2E64/haNF8IC85eTx1SWkm9eTAnTcpwNdmxQUuAGaZuAd+MqjqZppXmj5
	Kkv1T2/77E8sBUM+pqu0bWtMp2PzXeXCUhysIR5aUZhyPbHJ5cPCZ7VwupwWKMNjsWqK4UaSEBfU4
	NrPXqDqwkmjCmqz9AggQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcio-0004gB-Az; Fri, 31 May 2019 08:17:06 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcij-0004b2-0z
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 08:17:03 +0000
Received: by mail-qt1-x844.google.com with SMTP id y57so10379537qtk.4
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 01:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zG49i3fFvaE3LptqoAqK8TJQLWdwVR/TrQVf7eDZNuQ=;
 b=KVxYFlKZmYMCR8k3PdItitufjGxL2weHvtHHNuZXE403k77bS0zWvd7VWj+ACSf93p
 pxkRJ/CyCa/Jfr6fhleMAoKFhfXFb/ENp7jq+t+niIGkMbrd5ixtFGB+mE2p8zAC58RO
 yJeVomclIfsYuVMW4cWD9V+e9v2wtjgEHK2i9FDultVcfzbCD5fY+BBeF67V5s8yimdo
 xpeDGXVbHhH/J/pjROkk4K7BeYdxGHx6MhpG2uWGzCaPe+xpB9NHnG99VxgIUZYdovqX
 k66awXZhb5cTu7otQ6Jx21gjNbuEkmn+U9zs8kH2YWFrVtKLU5fC2ELR4aPMBb/mnfEh
 W8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zG49i3fFvaE3LptqoAqK8TJQLWdwVR/TrQVf7eDZNuQ=;
 b=SXLj6B36h9PLS2moxXDGNoDlYkYZ4nWj3mRSYmHh6ciaK3yqSpXXKqxtlOVKkHpmL2
 gbgDzv4nN9Mt6IEMbjk0/vRCVYpqnZs95f3W2yUFkqZOBVtOcbipG8sGZZM8GY8L0axj
 dlZYt+q9tvBjuPD74g1+uXR8b3/Aysdyp0ulRkEt/rfP5IaIDG6n4uaofGWwg0xDIiJ0
 gwPB/lwgWpf+IAI7AVuF35R3U7PdC837YSLO7q5OrosRhMMN2IOkjBj6a/sbX1NylNQn
 B9wKtRgrN4UMpTJ0KoTZlrcqzg2UVbond0t1hvaVuLh6IhkWAtq1j28WprcFvXOq3lbV
 4jkQ==
X-Gm-Message-State: APjAAAXw+7lbKwDZhHHCaLumWYQ0XO5oGkLNelhci+aYnvY0t3OxXu9p
 hUNJrclqlm4Om717qmqplG9igneGU1BNWbr9Ur0=
X-Google-Smtp-Source: APXvYqypiJYBUTpH4bwam0exPDV9u17o9bC+HcgbWkIpk1rkN2AfaQyFZtt5i6HZe5ZhCkqZFAl1OZlVJmiZ4r7OSjM=
X-Received: by 2002:ac8:4442:: with SMTP id m2mr8021337qtn.107.1559290619388; 
 Fri, 31 May 2019 01:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190530222922.4269-1-luke.r.nels@gmail.com>
 <CAPhsuW4JXN65P4b_uXdJX12RZFU0HyuREZuwrm+tEQ0rq8-oRA@mail.gmail.com>
In-Reply-To: <CAPhsuW4JXN65P4b_uXdJX12RZFU0HyuREZuwrm+tEQ0rq8-oRA@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 31 May 2019 10:16:48 +0200
Message-ID: <CAJ+HfNi8ioZyMjbXGP=G3F_ZUmqO=CXMy6vzpL_rK6jn+hUpXw@mail.gmail.com>
Subject: Re: [PATCH bpf v2] bpf,
 riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh
To: Song Liu <liu.song.a23@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_011701_101715_90A2D846 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>, Networking <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAzMSBNYXkgMjAxOSBhdCAwMTowOCwgU29uZyBMaXUgPGxpdS5zb25nLmEyM0BnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgMzozMCBQTSBMdWtlIE5l
bHNvbiA8bHVrZS5yLm5lbHNAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBJbiBCUEYsIDMyLWJp
dCBBTFUgb3BlcmF0aW9ucyBzaG91bGQgemVyby1leHRlbmQgdGhlaXIgcmVzdWx0cyBpbnRvCj4g
PiB0aGUgNjQtYml0IHJlZ2lzdGVycy4KPiA+Cj4gPiBUaGUgY3VycmVudCBCUEYgSklUIG9uIFJJ
U0MtViBlbWl0cyBpbmNvcnJlY3QgaW5zdHJ1Y3Rpb25zIHRoYXQgcGVyZm9ybQo+ID4gc2lnbiBl
eHRlbnNpb24gb25seSAoZS5nLiwgYWRkdywgc3Vidykgb24gMzItYml0IGFkZCwgc3ViLCBsc2gs
IHJzaCwKPiA+IGFyc2gsIGFuZCBuZWcuIFRoaXMgYmVoYXZpb3IgZGl2ZXJnZXMgZnJvbSB0aGUg
aW50ZXJwcmV0ZXIgYW5kIEpJVHMKPiA+IGZvciBvdGhlciBhcmNoaXRlY3R1cmVzLgo+ID4KPiA+
IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIGJ1Z3MgYnkgcGVyZm9ybWluZyB6ZXJvIGV4dGVuc2lvbiBv
biB0aGUgZGVzdGluYXRpb24KPiA+IHJlZ2lzdGVyIG9mIDMyLWJpdCBBTFUgb3BlcmF0aW9ucy4K
PiA+Cj4gPiBGaXhlczogMjM1M2VjYzZmOTFmICgiYnBmLCByaXNjdjogYWRkIEJQRiBKSVQgZm9y
IFJWNjRHIikKPiA+IENjOiBYaSBXYW5nIDx4aS53YW5nQGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1v
ZmYtYnk6IEx1a2UgTmVsc29uIDxsdWtlLnIubmVsc0BnbWFpbC5jb20+Cj4KPiBBY2tlZC1ieTog
U29uZyBMaXUgPHNvbmdsaXVicmF2aW5nQGZiLmNvbT4KPgoKTHVrZSwgdGhhbmtzIGZvciBmaXhp
bmcgdGhpcyEgTmljZSB3b3JrIQoKQWNrZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVs
QGdtYWlsLmNvbT4KCj4KPiA+IC0tLQo+ID4gVGhlIG9yaWdpbmFsIHBhdGNoIGlzCj4gPiBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOS81LzMwLzEzNzAKPiA+Cj4gPiBUaGlzIHZlcnNpb24gaXMg
cmViYXNlZCBhZ2FpbnN0IHRoZSBicGYgdHJlZS4KPiA+IC0tLQo+ID4gIGFyY2gvcmlzY3YvbmV0
L2JwZl9qaXRfY29tcC5jIHwgMTggKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9uZXQv
YnBmX2ppdF9jb21wLmMgYi9hcmNoL3Jpc2N2L25ldC9icGZfaml0X2NvbXAuYwo+ID4gaW5kZXgg
ZTVjOGQ2NzViZDZlLi40MjZkNWMzM2VhOTAgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL3Jpc2N2L25l
dC9icGZfaml0X2NvbXAuYwo+ID4gKysrIGIvYXJjaC9yaXNjdi9uZXQvYnBmX2ppdF9jb21wLmMK
PiA+IEBAIC03NTEsMTAgKzc1MSwxNCBAQCBzdGF0aWMgaW50IGVtaXRfaW5zbihjb25zdCBzdHJ1
Y3QgYnBmX2luc24gKmluc24sIHN0cnVjdCBydl9qaXRfY29udGV4dCAqY3R4LAo+ID4gICAgICAg
ICBjYXNlIEJQRl9BTFUgfCBCUEZfQUREIHwgQlBGX1g6Cj4gPiAgICAgICAgIGNhc2UgQlBGX0FM
VTY0IHwgQlBGX0FERCB8IEJQRl9YOgo+ID4gICAgICAgICAgICAgICAgIGVtaXQoaXM2NCA/IHJ2
X2FkZChyZCwgcmQsIHJzKSA6IHJ2X2FkZHcocmQsIHJkLCBycyksIGN0eCk7Cj4gPiArICAgICAg
ICAgICAgICAgaWYgKCFpczY0KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZW1pdF96ZXh0
XzMyKHJkLCBjdHgpOwo+ID4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgICBjYXNl
IEJQRl9BTFUgfCBCUEZfU1VCIHwgQlBGX1g6Cj4gPiAgICAgICAgIGNhc2UgQlBGX0FMVTY0IHwg
QlBGX1NVQiB8IEJQRl9YOgo+ID4gICAgICAgICAgICAgICAgIGVtaXQoaXM2NCA/IHJ2X3N1Yihy
ZCwgcmQsIHJzKSA6IHJ2X3N1YncocmQsIHJkLCBycyksIGN0eCk7Cj4gPiArICAgICAgICAgICAg
ICAgaWYgKCFpczY0KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZW1pdF96ZXh0XzMyKHJk
LCBjdHgpOwo+ID4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgICBjYXNlIEJQRl9B
TFUgfCBCUEZfQU5EIHwgQlBGX1g6Cj4gPiAgICAgICAgIGNhc2UgQlBGX0FMVTY0IHwgQlBGX0FO
RCB8IEJQRl9YOgo+ID4gQEAgLTc5NSwxNCArNzk5LDIwIEBAIHN0YXRpYyBpbnQgZW1pdF9pbnNu
KGNvbnN0IHN0cnVjdCBicGZfaW5zbiAqaW5zbiwgc3RydWN0IHJ2X2ppdF9jb250ZXh0ICpjdHgs
Cj4gPiAgICAgICAgIGNhc2UgQlBGX0FMVSB8IEJQRl9MU0ggfCBCUEZfWDoKPiA+ICAgICAgICAg
Y2FzZSBCUEZfQUxVNjQgfCBCUEZfTFNIIHwgQlBGX1g6Cj4gPiAgICAgICAgICAgICAgICAgZW1p
dChpczY0ID8gcnZfc2xsKHJkLCByZCwgcnMpIDogcnZfc2xsdyhyZCwgcmQsIHJzKSwgY3R4KTsK
PiA+ICsgICAgICAgICAgICAgICBpZiAoIWlzNjQpCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICBlbWl0X3pleHRfMzIocmQsIGN0eCk7Cj4gPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAg
ICAgICAgIGNhc2UgQlBGX0FMVSB8IEJQRl9SU0ggfCBCUEZfWDoKPiA+ICAgICAgICAgY2FzZSBC
UEZfQUxVNjQgfCBCUEZfUlNIIHwgQlBGX1g6Cj4gPiAgICAgICAgICAgICAgICAgZW1pdChpczY0
ID8gcnZfc3JsKHJkLCByZCwgcnMpIDogcnZfc3JsdyhyZCwgcmQsIHJzKSwgY3R4KTsKPiA+ICsg
ICAgICAgICAgICAgICBpZiAoIWlzNjQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBlbWl0
X3pleHRfMzIocmQsIGN0eCk7Cj4gPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICAg
IGNhc2UgQlBGX0FMVSB8IEJQRl9BUlNIIHwgQlBGX1g6Cj4gPiAgICAgICAgIGNhc2UgQlBGX0FM
VTY0IHwgQlBGX0FSU0ggfCBCUEZfWDoKPiA+ICAgICAgICAgICAgICAgICBlbWl0KGlzNjQgPyBy
dl9zcmEocmQsIHJkLCBycykgOiBydl9zcmF3KHJkLCByZCwgcnMpLCBjdHgpOwo+ID4gKyAgICAg
ICAgICAgICAgIGlmICghaXM2NCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVtaXRfemV4
dF8zMihyZCwgY3R4KTsKPiA+ICAgICAgICAgICAgICAgICBicmVhazsKPiA+Cj4gPiAgICAgICAg
IC8qIGRzdCA9IC1kc3QgKi8KPiA+IEBAIC04MTAsNiArODIwLDggQEAgc3RhdGljIGludCBlbWl0
X2luc24oY29uc3Qgc3RydWN0IGJwZl9pbnNuICppbnNuLCBzdHJ1Y3QgcnZfaml0X2NvbnRleHQg
KmN0eCwKPiA+ICAgICAgICAgY2FzZSBCUEZfQUxVNjQgfCBCUEZfTkVHOgo+ID4gICAgICAgICAg
ICAgICAgIGVtaXQoaXM2NCA/IHJ2X3N1YihyZCwgUlZfUkVHX1pFUk8sIHJkKSA6Cj4gPiAgICAg
ICAgICAgICAgICAgICAgICBydl9zdWJ3KHJkLCBSVl9SRUdfWkVSTywgcmQpLCBjdHgpOwo+ID4g
KyAgICAgICAgICAgICAgIGlmICghaXM2NCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVt
aXRfemV4dF8zMihyZCwgY3R4KTsKPiA+ICAgICAgICAgICAgICAgICBicmVhazsKPiA+Cj4gPiAg
ICAgICAgIC8qIGRzdCA9IEJTV0FQIyNpbW0oZHN0KSAqLwo+ID4gQEAgLTk2NCwxNCArOTc2LDIw
IEBAIHN0YXRpYyBpbnQgZW1pdF9pbnNuKGNvbnN0IHN0cnVjdCBicGZfaW5zbiAqaW5zbiwgc3Ry
dWN0IHJ2X2ppdF9jb250ZXh0ICpjdHgsCj4gPiAgICAgICAgIGNhc2UgQlBGX0FMVSB8IEJQRl9M
U0ggfCBCUEZfSzoKPiA+ICAgICAgICAgY2FzZSBCUEZfQUxVNjQgfCBCUEZfTFNIIHwgQlBGX0s6
Cj4gPiAgICAgICAgICAgICAgICAgZW1pdChpczY0ID8gcnZfc2xsaShyZCwgcmQsIGltbSkgOiBy
dl9zbGxpdyhyZCwgcmQsIGltbSksIGN0eCk7Cj4gPiArICAgICAgICAgICAgICAgaWYgKCFpczY0
KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZW1pdF96ZXh0XzMyKHJkLCBjdHgpOwo+ID4g
ICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgICBjYXNlIEJQRl9BTFUgfCBCUEZfUlNI
IHwgQlBGX0s6Cj4gPiAgICAgICAgIGNhc2UgQlBGX0FMVTY0IHwgQlBGX1JTSCB8IEJQRl9LOgo+
ID4gICAgICAgICAgICAgICAgIGVtaXQoaXM2NCA/IHJ2X3NybGkocmQsIHJkLCBpbW0pIDogcnZf
c3JsaXcocmQsIHJkLCBpbW0pLCBjdHgpOwo+ID4gKyAgICAgICAgICAgICAgIGlmICghaXM2NCkK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVtaXRfemV4dF8zMihyZCwgY3R4KTsKPiA+ICAg
ICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAgICAgY2FzZSBCUEZfQUxVIHwgQlBGX0FSU0gg
fCBCUEZfSzoKPiA+ICAgICAgICAgY2FzZSBCUEZfQUxVNjQgfCBCUEZfQVJTSCB8IEJQRl9LOgo+
ID4gICAgICAgICAgICAgICAgIGVtaXQoaXM2NCA/IHJ2X3NyYWkocmQsIHJkLCBpbW0pIDogcnZf
c3JhaXcocmQsIHJkLCBpbW0pLCBjdHgpOwo+ID4gKyAgICAgICAgICAgICAgIGlmICghaXM2NCkK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVtaXRfemV4dF8zMihyZCwgY3R4KTsKPiA+ICAg
ICAgICAgICAgICAgICBicmVhazsKPiA+Cj4gPiAgICAgICAgIC8qIEpVTVAgb2ZmICovCj4gPiAt
LQo+ID4gMi4xOS4xCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yaXNjdgo=
